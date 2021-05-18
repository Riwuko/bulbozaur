import graphene
from django.shortcuts import get_object_or_404
from graphene_django import DjangoObjectType
from graphql_jwt.decorators import login_required
from .models import Building, Device, Measurement, MeasuringDevice, Schedule, ControlParameter
from users.models import User


class UserType(DjangoObjectType):
    class Meta:
        model = User


class BuildingType(DjangoObjectType):
    class Meta:
        model = Building


class DeviceType(DjangoObjectType):
    class Meta:
        model = Device


class MeasurementType(DjangoObjectType):
    class Meta:
        model = Measurement


class MeasuringDeviceType(DjangoObjectType):
    class Meta:
        model = MeasuringDevice



class ScheduleType(DjangoObjectType):
    class Meta:
        model = Schedule


class ControlParameterType(DjangoObjectType):
    class Meta:
        model = ControlParameter


class Query(graphene.ObjectType):
    buildings = graphene.List(BuildingType, token=graphene.String(required=True))
    building = graphene.Field(BuildingType, id=graphene.Int(), token=graphene.String(required=True))

    devices = graphene.List(DeviceType, token=graphene.String(required=True))
    device = graphene.Field(DeviceType, id=graphene.Int(), token=graphene.String(required=True))

    measurements = graphene.List(MeasurementType, token=graphene.String(required=True))
    measurement = graphene.Field(MeasurementType, id=graphene.Int(), token=graphene.String(required=True))

    measuring_devices = graphene.List(MeasuringDeviceType,  token=graphene.String(required=True))
    measuring_device = graphene.Field(MeasuringDeviceType, id=graphene.Int(),  token=graphene.String(required=True))

    schedules = graphene.List(ScheduleType, token=graphene.String(required=True))
    schedule = graphene.Field(ScheduleType, id=graphene.Int(),  token=graphene.String(required=True))

    users = graphene.List(UserType, token=graphene.String(required=True))
    user = graphene.Field(UserType, id=graphene.Int(), token=graphene.String(required=True))

    @login_required
    def resolve_buildings(root, info, **kwargs):
        if kwargs.get("id"):
            return get_object_or_404(Building, id=id)
        return Building.objects.filter(user=info.context.user)

    @login_required
    def resolve_building(root, info, id, **kwargs):
        return get_object_or_404(Building, id=id)

    @login_required
    def resolve_devices(root, info, **kwargs):
        return Device.objects.filter(building__user=info.context.user)

    @login_required
    def resolve_device(root, info, id, **kwargs):
        return get_object_or_404(Device, id=id, building__user=info.context.user)

    @login_required
    def resolve_measuring_devices(root, info, **kwargs):
        return MeasuringDevice.objects.filter(building__user=info.context.user)

    @login_required
    def resolve_measuring_device(root, info, id, **kwargs):
        return get_object_or_404(MeasuringDevice, id=id, building__user=info.context.user)

    @login_required
    def resolve_measurements(root, info, **kwargs):
        return Measurement.objects.filter(building__user=info.context.user)

    @login_required
    def resolve_measurement(root, info, id, **kwargs):
        return get_object_or_404(Measurement, id=id, building__user=info.context.user)

    @login_required
    def resolve_control_parameters(root, info, **kwargs):
        return ControlParameter.objects.filter(building__user=info.context.user)

    @login_required
    def resolve_control_parameter(root, info, id, **kwargs):
        return get_object_or_404(ControlParameter, id=id, building__user=info.context.user)

    @login_required
    def resolve_schedules(root, info, **kwargs):
        return Schedule.objects.filter(building__user=info.context.user)

    @login_required
    def resolve_schedules(root, info, id, **kwargs):
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

    device = graphene.Field(DeviceType)

    @login_required
    def mutate(root, info, id, **kwargs):
        device=get_object_or_404(Device, id=id, building__user=info.context.user)
        device.state = kwargs.get("state", device.state)
        device.save()
        return ChangeDeviceState(device = device)

class CreateSchedule(graphene.Mutation):
    class Arguments:
        name = graphene.String()
        building_id = graphene.ID()
        icon = graphene.Int()
        time_from = graphene.Time()
        time_to = graphene.Time()

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
        return CreateSchedule(schedule=schedule_instance, ok=ok)


class Mutation(graphene.ObjectType):
    update_device = ChangeDeviceState.Field()
    create_schedule = CreateSchedule.Field()
