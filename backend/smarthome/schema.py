import graphene
from graphene import Node

from django.shortcuts import get_object_or_404
from graphene.types import interface
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
            'id': 'id'
        }
        ordering_fields = {
            'measure_date': 'measure_date',
            'measure_value': 'measure_value',
        }

class MeasurementObjectType(graphene.ObjectType):
    id = graphene.ID()
    measure_value = graphene.Decimal()
    measure_date = graphene.DateTime()

class ScheduleDeviceStateType(DjangoObjectType):
    class Meta:
        model = ScheduleDeviceState

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

    measurements = ElasticsearchConnectionField(MeasurementType)

    measuring_devices = graphene.List(MeasuringDeviceType, building__id=graphene.Int(required=False), token=graphene.String(required=True))
    measuring_device = graphene.Field(MeasuringDeviceType, id=graphene.Int(),  token=graphene.String(required=True))

    actuating_devices = graphene.List(ActuatingDeviceType, building__id=graphene.Int(required=False), token=graphene.String(required=True))
    actuating_device = graphene.Field(ActuatingDeviceType, id=graphene.Int(),  token=graphene.String(required=True))

    schedules = graphene.List(ScheduleType, building__id=graphene.Int(required=False), token=graphene.String(required=True))
    schedule = graphene.Field(ScheduleType, id=graphene.Int(),  token=graphene.String(required=True))

    control_parameters = graphene.List(ControlParameterType, building__id=graphene.Int(required=False), token=graphene.String(required=True))
    control_parameter = graphene.Field(ControlParameterType, id=graphene.Int(),  token=graphene.String(required=True))

    users = graphene.List(UserType, token=graphene.String(required=True))
    user = graphene.Field(UserType, id=graphene.Int(), token=graphene.String(required=True))

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
        building = kwargs.get("building__id")
        if building:
            return Schedule.objects.filter(building__user=info.context.user, building__id = building)
        return Schedule.objects.filter(building__user=info.context.user)

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
        token=graphene.String(required=True)

    device = graphene.Field(ActuatingDeviceType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, id, **kwargs):
        device=get_object_or_404(ActuatingDevice, id=id, building__user=info.context.user)
        device.state = kwargs.get("state", device.state)
        device.save()
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

    control_parameter = graphene.Field(ActuatingDeviceType)
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
        token=graphene.String(required=True)

    schedule = graphene.Field(ScheduleType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, name, building_id, time_from, time_to, **kwargs ):
        building=get_object_or_404(Building, id=building_id, user=info.context.user)
        schedule_instance = Schedule(
            name=name,
            building=building,
            icon=kwargs.get("icon"),
            time_from=time_from,
            time_to=time_to,
        )
        ok = True
        schedule_instance.save()
        return CreateSchedule(schedule=schedule_instance, ok=ok)

class ChangeSchedule(graphene.Mutation):
    class Arguments:
        id = graphene.ID()
        icon = graphene.Int()
        time_from = graphene.Time()
        time_to = graphene.Time()
        token=graphene.String(required=True)

    schedule = graphene.Field(ScheduleType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, id, **kwargs):
        schedule=get_object_or_404(Schedule, id=id, building__user=info.context.user)
        schedule.icon = kwargs.get("icon", schedule.icon)
        schedule.time_from = kwargs.get("time_from", schedule.time_from)
        schedule.time_to = kwargs.get("time_to", schedule.time_to)
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
        token=graphene.String(required=True)

    schedule_device_state = graphene.Field(ScheduleDeviceStateType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, device_id, schedule_id, state=False, state_value=None, **kwargs ):
        device=get_object_or_404(Device, id=device_id, building__user=info.context.user)
        schedule=get_object_or_404(Schedule, id=schedule_id, building__user=info.context.user)
        schedule_device_state_instance = ScheduleDeviceState(
            device=device,
            schedule=schedule,
            state=state,
            state_value=state_value
        )
        schedule_device_state_instance.save()
        ok = True
        return CreateScheduleDeviceState(schedule_device_state=schedule_device_state_instance, ok=ok)

class ChangeScheduleDeviceState(graphene.Mutation):
    class Arguments:
        id = graphene.ID()
        state = graphene.Boolean()
        state_value = graphene.Boolean()
        token=graphene.String(required=True)

    schedule_device_state = graphene.Field(ScheduleDeviceStateType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, id, **kwargs):
        schedule_device_state=get_object_or_404(ScheduleDeviceState, id=id, schedule__building__user=info.context.user)
        schedule_device_state.state = kwargs.get("state", schedule_device_state.state)
        schedule_device_state.state_value = kwargs.get("state_value", schedule_device_state.state_value)
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
        token=graphene.String(required=True)


    measurement = graphene.Field(MeasurementCreateType)
    ok = graphene.Boolean()

    @login_required
    def mutate(root, info, measure_value,  device_id, **kwargs ):
        device=get_object_or_404(Device, id=device_id, building__user=info.context.user)
        measurement_instance = Measurement(
            measure_value=measure_value,
            device=device,
            measure_date=kwargs.get("measure_date", datetime.now())
        )
        measurement_instance.save()
        ok = True
        return CreateMeasurement(measurement=measurement_instance, ok=ok)


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

