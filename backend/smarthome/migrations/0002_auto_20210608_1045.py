# Generated by Django 3.1.12 on 2021-06-08 08:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('smarthome', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='actuatingdevice',
            name='building',
        ),
        migrations.RemoveField(
            model_name='measuringdevice',
            name='building',
        ),
        migrations.AddField(
            model_name='device',
            name='building',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='building_devices', to='smarthome.building'),
        ),
    ]
