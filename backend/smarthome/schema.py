import graphene
from graphene import Node

from django.shortcuts import get_object_or_404
from graphene_django import DjangoObjectType
from graphql_jwt.decorators import login_required
from graphene_elastic import (
    ElasticsearchObjectType,
    ElasticsearchConnectionField,
)
from graphene_elastic.filter_backends import (
    FilteringFilterBackend,
    SearchFilterBackend,
    OrderingFilterBackend,
)

from .models import Building, Device, ActuatingDevice, Measurement, MeasuringDevice, Schedule, ScheduleDeviceState, ControlParameter
from .documents import MeasurementDocument
from users.models import User
from datetime import datetime
from . import constants

class UserType(DjangoObjectType):
    class Meta:
        model = User


class MeasurementCreateType(DjangoObjectType):
    class Meta:
        model = Measurement

class MeasurementType(ElasticsearchObjectType):
    class Meta:
        document = MeasurementDocument
        interfaces=(Node,)
        filter_backends = [
            FilteringFilterBackend,
            SearchFilterBackend,
            OrderingFilterBackend,

        ]
        filter_fields = {
            'id': 'id',
            'measure_parameter': 'measure_parameter',
            'measure_date': 'measure_date',
            'device':{
                'type': 'object',
                'properties': {
                    'id': 'id',
                    'name':'name',
                    'building': {
                        'type': 'object',
                        'properties': {
                            'name': 'name',
                            'id':'id',
                            'user': {
                                'type': 'object',
                                'properties': {
                                    'id':'id',
                                    'email':'email',
                                }
                            }
                    },
                },
                }
            }
        }
        search_fields = {
            'id': 'id',
            'measure_parameter': 'measure_parameter',
        }
        ordering_fields = {
            'measure_date': 'measure_date',
            'measure_value': 'measure_value',
        }

class MeasurementObjectType(graphene.ObjectType):
    id = graphene.ID()
    measure_value = graphene.Decimal()
    measure_date = graphene.DateTime()
    measure_parameter = graphene.String()

class ScheduleDeviceStateType(DjangoObjectType):
    class Meta:
        model = ScheduleDeviceState

class ScheduleDeviceStateInput(graphene.InputObjectType):
    schedule = graphene.Int()
    device = graphene.Int()
    state = graphene.Boolean()
    state_value = graphene.Decimal()
    light_level = graphene.Int()

class ScheduleType(DjangoObjectType):
    schedule_devices_states = graphene.List(ScheduleDeviceStateType)
    class Meta:
        model = Schedule

    def resolve_schedule_devices_states(self, info):
        return self.schedule_devices_states.all()


class ControlParameterType(DjangoObjectType):
    class Meta:
        model = ControlParameter

class DeviceType(graphene.Interface):
    id = graphene.ID()
    name = graphene.String()
    class Meta:
        model = Device

class ActuatingDeviceType(DjangoObjectType):
    class Meta:
        model = ActuatingDevice
        interfaces = (DeviceType, )

class MeasuringDeviceType(DjangoObjectType):
    last_measurement = graphene.Field(MeasurementObjectType)

    class Meta:
        model = MeasuringDevice
        interfaces = (DeviceType, )
    
    def resolve_last_measurement(self, info):
        result = self.device_measurements.last()
        if not result:
            return None
        return MeasurementObjectType(id = result.id, measure_value = result.measure_value, measure_date = result.measure_date)

class DeviceUnionType(graphene.Union):

    @classmethod
    def resolve_type(cls, instance, info):
        if isinstance(instance, ActuatingDevice):
            return ActuatingDeviceType
        elif isinstance(instance, MeasuringDevice):
            return MeasuringDeviceType
        return None

    class Meta:
        types = [ActuatingDeviceType, MeasuringDeviceType]

class BuildingType(DjangoObjectType):
    building_devices = graphene.List(DeviceType)

    class Meta:
        model = Building

    def resolve_building_devices(self, info):
        return self.building_devices.all()

class Query(graphene.ObjectType):
    buildings = graphene.List(BuildingType, user__id = graphene.Int(required=False), token=graphene.String(required=True))
    building = graphene.Field(BuildingType, id=graphene.Int(), token=graphene.String(required=True))

    devices = graphene.List(DeviceUnionType,  building__id=graphene.Int(required=False), token=graphene.String(required=True))
    device = graphene.Field(DeviceUnionType, id=graphene.Int(), token=graphene.String(required=True))

    measure_parameters = graphene.List(graphene.String, building__id=graphene.Int(required=False), token=graphene.String(required=True))

    measurements = ElasticsearchConnectionField(MeasurementType)

    measuring_devices = graphene.List(MeasuringDeviceType, building__id=graphene.Int(required=False), token=graphene.String(required=True))
    measuring_device = graphene.Field(MeasuringDeviceType, id=graphene.Int(),  token=graphene.String(required=True))

    actuating_devices = graphene.List(ActuatingDeviceType, building__id=graphene.Int(required=False), token=graphene.String(required=True))
    actuating_device = graphene.Field(ActuatingDeviceType, id=graphene.Int(),  token=graphene.String(required=True))

    schedules = graphene.List(ScheduleType, building__id=graphene.Int(required=False), ordering=graphene.Boolean(required=False), token=graphene.String(required=True))
    schedule = graphene.Field(ScheduleType, id=graphene.Int(), ordering=graphene.Boolean(required=False), token=graphene.String(required=True))

    control_parameters = graphene.List(ControlParameterType, building__id=graphene.Int(required=False), token=graphene.String(required=True))
    control_parameter = graphene.Field(ControlParameterType, id=graphene.Int(),  token=graphene.String(required=True))

    users = graphene.List(UserType, token=graphene.String(required=True))
    user = graphene.Field(UserType, id=graphene.Int(), token=graphene.String(required=True))

    @login_required
    def resolve_measure_parameters(root, info, **kwargs):
        building = kwargs.get("building__id")
        if building:
            distincts = Measurement.objects.filter(device__building__user=info.context.user, device__building__id = building).order_by().values_list('measure_parameter').distinct()
        else:
            distincts = Measurement.objects.filter(device__building__user=info.context.user).order_by().values_list('measure_parameter').distinct()
        distincts = (list(sum(distincts, ())))
        return distincts

    @login_required
    def resolve_buildings(root, info, **kwargs):
        return Building.objects.filter(user=info.context.user)

    @login_required
    def resolve_building(root, info, id, **kwargs):
        return get_object_or_404(Building, id=id)

    @login_required
    def resolve_devices(root, info, **kwargs):
        building = kwargs.get("building__id")
        if building:
            return Device.objects.filter(building__user=info.context.user, building__id = building)
        return Device.objects.filter(building__user=info.context.user)

    @login_required
    def resolve_device(root, info, id, **kwargs):
        return get_object_or_404(Device, id=id, building__user=info.context.user)

    @login_required
    def resolve_measuring_devices(root, info, **kwargs):
        building = kwargs.get("building__id")
        if building:
            return MeasuringDevice.objects.filter(building__user=info.context.user, building__id = building)
        return MeasuringDevice.objects.filter(building__user=info.context.user)

    @login_required
    def resolve_measuring_device(root, info, id, **kwargs):
        return get_object_or_404(MeasuringDevice, id=id, building__user=info.context.user)

    @login_required
    def resolve_actuating_devices(root, info, **kwargs):
        building = kwargs.get("building__id")
        if building:
            return ActuatingDevice.objects.filter(building__user=info.context.user, building__id = building)
        return ActuatingDevice.objects.filter(building__user=info.context.user)

    @login_required
    def resolve_actuating_device(root, info, id, **kwargs):
        return get_object_or_404(ActuatingDevice, id=id, building__user=info.context.user)


    @login_required
    def resolve_control_parameters(root, info, **kwargs):
        building = kwargs.get("building__id")
        if building:
            return ControlParameter.objects.filter(building__user=info.context.user, building__id = building)
        return ControlParameter.objects.filter(building__user=info.context.user)

    @login_required
    def resolve_control_parameter(root, info, id, **kwargs):
        return get_object_or_404(ControlParameter, id=id, building__user=info.context.user)

    @login_required
    def resolve_schedules(root, info, **kwargs):
        ordering = kwargs.get("ordering", "")
        building = kwargs.get("building__id")
        if building:
            query = Schedule.objects.filter(building__user=info.context.user, building__id = building)
        query = Schedule.objects.filter(building__user=info.context.user)
        if ordering:
            query = query.order_by('time_from')
        return query

    @login_required
    def resolve_schedule(root, info, id, **kwargs):
        return get_object_or_404(Schedule, id=id, building__user=info.context.user)

    @login_required
    def resolve_users(root, info, **kwargs):
        return User.objects.all()

    @login_required
    def resolve_user(root, info, id, **kwargs):
        return get_object_or_404(User, id=id)


class ChangeDeviceState(graphene.Mutation):
    class Arguments:
        id = graphene.ID()
        state = graphene.Boolean()
        state_value = graphene.Decimal()
        light_level = graphene.Int()
        token=graphene.String(required=True)

    device = graphene.Field(ActuatingDeviceType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, id, **kwargs):
        device=get_object_or_404(ActuatingDevice, id=id, building__user=info.context.user)
        device.state = kwargs.get("state", device.state)
        device.state_value = kwargs.get("state_value", device.state_value)
        device.light_level = kwargs.get("light_level", device.light_level)
        device.save()
        Measurement.objects.create(device = device, measure_value = int(device.state), measure_parameter=constants.DEVICE_ACTIONS)
        Measurement.objects.create(device = device, measure_value = device.state_value, measure_parameter=constants.LIGHT_INTENSITY)
        Measurement.objects.create(device = device, measure_value = device.light_level, measure_parameter=constants.LIGHT_LEVEL)
        ok = True
        return ChangeDeviceState(device = device, ok=ok)

class CreateControlParameter(graphene.Mutation):
    class Arguments:
        building_id = graphene.ID()
        light_value = graphene.Decimal()
        token=graphene.String(required=True)

    control_parameter = graphene.Field(ControlParameterType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, building_id, light_value, **kwargs ):
        building=get_object_or_404(Building, id=building_id, user=info.context.user)
        control_parameter_instance = ControlParameter(
            building=building,
            light_value=light_value,
        )
        control_parameter_instance.save()
        ok = True
        return CreateControlParameter(control_parameter=control_parameter_instance, ok=ok)

class ChangeControlParameter(graphene.Mutation):
    class Arguments:
        id = graphene.ID()
        light_value = graphene.Decimal()
        token=graphene.String(required=True)

    control_parameter = graphene.Field(ControlParameterType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, id, **kwargs):
        control_parameter=get_object_or_404(ControlParameter, id=id, building__user=info.context.user)
        control_parameter.light_value = kwargs.get("light_value", control_parameter.light_value)
        control_parameter.save()
        ok = True
        return ChangeControlParameter(control_parameter = control_parameter, ok=ok)


class CreateSchedule(graphene.Mutation):
    class Arguments:
        name = graphene.String()
        building_id = graphene.ID()
        icon = graphene.Int()
        time_from = graphene.Time()
        time_to = graphene.Time()
        is_active = graphene.Boolean()
        devices_states = graphene.List(ScheduleDeviceStateInput)
        token=graphene.String(required=True)

    schedule = graphene.Field(ScheduleType)
    ok = graphene.Boolean()

    @classmethod
    def _create_scene_device_states(self, info, schedule_instance, device_states):
        for device in device_states:
            device_instance=get_object_or_404(Device, id=device["device"], building__user=info.context.user)
            schedule_device_state_instance = ScheduleDeviceState(
                device=device_instance,
                schedule=schedule_instance,
                state=device.get("state", False),
                state_value=device.get("state_value", 0.0),
                light_level=device.get("light_level", 0)
            )
            schedule_device_state_instance.save()

    @login_required
    def mutate(root, info, name, building_id, time_from, time_to, is_active=False, **kwargs ):
        building=get_object_or_404(Building, id=building_id, user=info.context.user)
        schedule_instance = Schedule(
            name=name,
            building=building,
            icon=kwargs.get("icon"),
            time_from=time_from,
            time_to=time_to,
            is_active=is_active,
        )
        schedule_instance.save()

        device_states = kwargs.get("devices_states")
        if device_states:
            CreateSchedule._create_scene_device_states(info, schedule_instance, device_states)

        ok = True
        return CreateSchedule(schedule=schedule_instance, ok=ok)

class ChangeSchedule(graphene.Mutation):
    class Arguments:
        id = graphene.ID()
        icon = graphene.Int()
        time_from = graphene.Time()
        time_to = graphene.Time()
        is_active = graphene.Boolean()
        token=graphene.String(required=True)

    schedule = graphene.Field(ScheduleType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, id, **kwargs):
        schedule=get_object_or_404(Schedule, id=id, building__user=info.context.user)
        schedule.icon = kwargs.get("icon", schedule.icon)
        schedule.time_from = kwargs.get("time_from", schedule.time_from)
        schedule.time_to = kwargs.get("time_to", schedule.time_to)
        schedule.is_active = kwargs.get("is_active", schedule.is_active)
        schedule.save()
        ok = True
        return ChangeSchedule(schedule=schedule, ok=ok)

class DeleteSchedule(graphene.Mutation):
    class Arguments:
        id = graphene.ID()
        token=graphene.String(required=True)

    schedule = graphene.Field(ScheduleType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, id, **kwargs):
        schedule=get_object_or_404(Schedule, id=id, building__user=info.context.user)
        schedule.delete()
        ok = True
        return DeleteSchedule(ok = ok)

class CreateScheduleDeviceState(graphene.Mutation):
    class Arguments:
        device_id = graphene.ID()
        schedule_id = graphene.ID()
        state = graphene.Boolean()
        state_value = graphene.Decimal()
        light_level = graphene.Int()
        token=graphene.String(required=True)

    schedule_device_state = graphene.Field(ScheduleDeviceStateType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, device_id, schedule_id, state=False, state_value=None, light_level=None, **kwargs ):
        device=get_object_or_404(Device, id=device_id, building__user=info.context.user)
        schedule=get_object_or_404(Schedule, id=schedule_id, building__user=info.context.user)
        schedule_device_state_instance = ScheduleDeviceState(
            device=device,
            schedule=schedule,
            state=state,
            state_value=state_value,
            light_level=light_level,
        )
        schedule_device_state_instance.save()
        ok = True
        return CreateScheduleDeviceState(schedule_device_state=schedule_device_state_instance, ok=ok)

class ChangeScheduleDeviceState(graphene.Mutation):
    class Arguments:
        id = graphene.ID()
        state = graphene.Boolean()
        state_value = graphene.Boolean()
        light_level = graphene.Int()
        token=graphene.String(required=True)

    schedule_device_state = graphene.Field(ScheduleDeviceStateType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, id, **kwargs):
        schedule_device_state=get_object_or_404(ScheduleDeviceState, id=id, schedule__building__user=info.context.user)
        schedule_device_state.state = kwargs.get("state", schedule_device_state.state)
        schedule_device_state.state_value = kwargs.get("state_value", schedule_device_state.state_value)
        schedule_device_state.light_level = kwargs.get("light_level", schedule_device_state.light_level)
        schedule_device_state.save()
        ok = True
        return ChangeScheduleDeviceState(schedule_device_state = schedule_device_state, ok=ok)

class DeleteScheduleDeviceState(graphene.Mutation):
    class Arguments:
        id = graphene.ID()
        token=graphene.String(required=True)

    schedule_device_state = graphene.Field(ScheduleDeviceStateType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, id, **kwargs):
        schedule_device_state=get_object_or_404(ScheduleDeviceState, id=id, schedule__building__user=info.context.user)
        schedule_device_state.delete()
        ok = True
        return DeleteScheduleDeviceState(ok = ok)


class CreateMeasurement(graphene.Mutation):
    class Arguments:
        measure_value = graphene.Decimal()
        device_id = graphene.ID()
        measure_date = graphene.DateTime(required=False)
        measure_parameter = graphene.String()
        token=graphene.String(required=True)

    measurement = graphene.Field(MeasurementCreateType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, measure_value, measure_parameter, device_id, **kwargs ):
        device=get_object_or_404(Device, id=device_id, building__user=info.context.user)
        measurement_instance = Measurement(
            measure_value=measure_value,
            measure_parameter=measure_parameter,
            device=device,
            measure_date=kwargs.get("measure_date")
        )
        measurement_instance.save()
        ok = True
        return CreateMeasurement(measurement=measurement_instance, ok=ok)

class ChangeMeasurement(graphene.Mutation):
    class Arguments:
        measure_value = graphene.Decimal()
        id = graphene.ID()
        token=graphene.String(required=True)

    measurement = graphene.Field(MeasurementCreateType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, id, **kwargs):
        measurement=get_object_or_404(Measurement, id=id, device__building__user=info.context.user)
        measurement.measure_value = kwargs.get("measure_value", measurement.measure_value)
        measurement.measure_date = datetime.now()
        measurement.save()
        ok = True
        return ChangeMeasurement(measurement = measurement, ok=ok)

class Mutation(graphene.ObjectType):
    update_device = ChangeDeviceState.Field()

    create_schedule = CreateSchedule.Field()
    update_schedule = ChangeSchedule.Field()
    delete_schedule = DeleteSchedule.Field()

    create_schedule_device_state = CreateScheduleDeviceState.Field()
    update_schedule_device_state = ChangeScheduleDeviceState.Field()
    delete_schedule_device_state = DeleteScheduleDeviceState.Field()

    create_control_parameter = CreateControlParameter.Field()
    update_control_parameter = ChangeControlParameter.Field()

    create_measurement = CreateMeasurement.Field()
    update_measurement = ChangeMeasurement.Field()

