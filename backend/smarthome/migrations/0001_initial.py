# Generated by Django 3.1.12 on 2021-06-07 19:17

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('contenttypes', '0002_remove_content_type_name'),
    ]

    operations = [
        migrations.CreateModel(
            name='Building',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, null=True)),
                ('icon', models.IntegerField(blank=True, default=0, null=True)),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='user_buildings', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Device',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('polymorphic_ctype', models.ForeignKey(editable=False, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='polymorphic_smarthome.device_set+', to='contenttypes.contenttype')),
            ],
            options={
                'abstract': False,
                'base_manager_name': 'objects',
            },
        ),
        migrations.CreateModel(
            name='Schedule',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, unique=True)),
                ('icon', models.IntegerField(blank=True, default=0, null=True)),
                ('time_from', models.TimeField()),
                ('time_to', models.TimeField()),
                ('building', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='building_schedules', to='smarthome.building')),
            ],
        ),
        migrations.CreateModel(
            name='ActuatingDevice',
            fields=[
                ('device_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='smarthome.device')),
                ('state', models.BooleanField(default=False)),
                ('state_value', models.DecimalField(blank=True, decimal_places=2, default=None, max_digits=10, null=True)),
                ('building', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='building_devices', to='smarthome.building')),
            ],
            options={
                'abstract': False,
                'base_manager_name': 'objects',
            },
            bases=('smarthome.device',),
        ),
        migrations.CreateModel(
            name='Measurement',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('measure_date', models.DateTimeField(auto_now=True)),
                ('measure_value', models.DecimalField(decimal_places=3, max_digits=10, null=True)),
                ('device', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='device_measurements', to='smarthome.device')),
            ],
        ),
        migrations.CreateModel(
            name='MeasuringDevice',
            fields=[
                ('device_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='smarthome.device')),
                ('building', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='building_measuring_devices', to='smarthome.building')),
            ],
            options={
                'abstract': False,
                'base_manager_name': 'objects',
            },
            bases=('smarthome.device',),
        ),
        migrations.CreateModel(
            name='ControlParameter',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('light_value', models.DecimalField(decimal_places=3, max_digits=10)),
                ('building', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, related_name='building_control_parameter', to='smarthome.building')),
            ],
            options={
                'unique_together': {('building', 'light_value')},
            },
        ),
        migrations.CreateModel(
            name='ScheduleDeviceState',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('state', models.BooleanField(default=False)),
                ('state_value', models.DecimalField(blank=True, decimal_places=2, default=None, max_digits=10, null=True)),
                ('schedule', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='schedule_devices_states', to='smarthome.schedule')),
                ('device', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='schedule_device_states', to='smarthome.actuatingdevice')),
            ],
            options={
                'unique_together': {('device', 'schedule')},
            },
        ),
    ]
