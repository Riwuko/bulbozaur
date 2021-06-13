from django.contrib import admin

from .models import Building, ControlParameter, Device, ActuatingDevice, Measurement, MeasuringDevice, Schedule, ScheduleDeviceState

admin.site.register(Device)
admin.site.register(ActuatingDevice)
admin.site.register(Measurement)
admin.site.register(MeasuringDevice)
admin.site.register(Schedule)
admin.site.register(Building)
admin.site.register(ScheduleDeviceState)
admin.site.register(ControlParameter)
