from django.db import models

from users.models import User


class Building(models.Model):
    name = models.CharField(max_length=100, null=True)
    icon = models.IntegerField(null=True, blank=True, default=0)
    user = models.ForeignKey(
        User, related_name="user_buildings", null=True, on_delete=models.SET_NULL
    )

    def __str__(self):
        return f"Building: {str(self.id)} | name: {self.name}"


class MeasuringDevice(models.Model):
    name = models.CharField(max_length=100, null=False)
    building = models.ForeignKey(
        Building, related_name="building_measuring_devices", null=True, on_delete=models.SET_NULL
    )

    def __str__(self):
        return f"Measuring device: {str(self.id)} | name: {self.name}"


class Device(models.Model):
    name = models.CharField(max_length=100, null=False)
    state = models.BooleanField(null=False, default=False)
    state_value = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True, default=None)
    building = models.ForeignKey(
        Building, related_name="building_devices", null=True, on_delete=models.SET_NULL
    )

    def __str__(self):
        return f"Device: {str(self.id)} | name: {self.name}"


class Schedule(models.Model):
    name = models.CharField(max_length=100, null=False, unique=True)
    building = models.ForeignKey(
        Building, related_name="building_schedules", null=False, on_delete=models.CASCADE
    )
    icon = models.IntegerField(null=True, blank=True, default=0)
    time_from = models.TimeField()
    time_to = models.TimeField()

    def __str__(self):
        return f"Schedule: {str(self.id)} | name: {self.name}"


class ScheduleDeviceState(models.Model):
    device = models.ForeignKey(
        Device, related_name="schedule_device_states", null=False, on_delete=models.CASCADE
    )
    state = models.BooleanField(null=False, default=False)
    state_value = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True, default=None)
    schedule = models.ForeignKey(
        Schedule, related_name="schedule_devices_states", null=False, on_delete=models.CASCADE
    )

    class Meta:
        unique_together = (
            "device",
            "schedule",
        )

    def __str__(self):
        return f"Schedule-Device: {self.schedule} -- {self.device}"


class Measurement(models.Model):
    measure_date = models.DateTimeField(auto_now=True, null=False)
    measure_value = models.DecimalField(max_digits=10, decimal_places=3, null=True)
    measuring_device = models.ForeignKey(
        MeasuringDevice, on_delete=models.CASCADE, related_name="device_measurements"
    )

    def __str__(self):
        return f"Measurement: {str(self.id)} | measuring device: {self.measuring_device.name} | date: {self.measure_date}"


class ControlParameter(models.Model):
    building = models.OneToOneField(Building, on_delete=models.CASCADE, related_name="building_control_parameter")
    light_value = models.DecimalField(max_digits=10, decimal_places=3)

    class Meta:
        unique_together = (
            "building",
            "light_value",
        )

    def __str__(self):
        return f"{self.building.name} : {self.parameter}"
