# Generated by Django 3.1.12 on 2021-06-11 15:54

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('smarthome', '0004_auto_20210611_1700'),
    ]

    operations = [
        migrations.AddField(
            model_name='scheduledevicestate',
            name='light_level',
            field=models.IntegerField(blank=True, null=True, validators=[django.core.validators.MaxValueValidator(100), django.core.validators.MinValueValidator(0)]),
        ),
    ]
