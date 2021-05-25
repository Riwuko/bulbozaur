from django.db.models.fields import IntegerField
from elasticsearch_dsl import analyzer
from elasticsearch_dsl import connections
from django_elasticsearch_dsl.registries import registry

from django_elasticsearch_dsl import Document, Index, fields, Nested

from .models import Measurement, MeasuringDevice, Building
from users.models import User

from config.settings import ELASTICSEARCH_CONNECTION

connections.create_connection(**ELASTICSEARCH_CONNECTION)
measurements = Index('measurements')
# measuring_devices = Index('measuring_devices')
# buildings = Index('buildings')
# users = Index('users')

# @registry.register_document
# @users.document
# class UserDocument(Document):
#     email = fields.TextField()
#     id = fields.IntegerField(attr='id')
#     user_buildings = Nested(
#         properties={
#             'id': fields.IntegerField(attr='id'),
#             'name': fields.TextField(),
#         }
#     )
#     class Django:
#         model = User

# @registry.register_document
# @buildings.document
# class BuildingDocument(Document):
#     id = fields.IntegerField(attr='id')
#     user = fields.ObjectField(properties={
#         'email': fields.TextField(),
#         'id': fields.IntegerField(attr='id'),
#     })
#     name = fields.TextField()
#     class Django:
#         model = Building

# @registry.register_document
# @measuring_devices.document
# class MeasuringDeviceDocument(Document):
#     """Measuring device elasticsearch document"""
#     id = fields.IntegerField(attr='id')
#     name = fields.TextField()
#     building = fields.ObjectField(properties={
#         'name': fields.TextField(),
#         'id': fields.IntegerField(attr='id'),
#         'user': fields.ObjectField(attr='user', properties={
#             'email': fields.TextField(),
#             'id': fields.IntegerField(attr='id'),
#         })
#     })
#     device_measurements = fields.NestedField(properties={
#         'id': fields.IntegerField(attr='id'),
#         'measure_date': fields.DateField(),
#         'measure_value': fields.FloatField(),
#     })
#     class Django:
#         model = MeasuringDevice




@registry.register_document
@measurements.document
class MeasurementDocument(Document):
    id = fields.IntegerField(attr='id')
    measure_value = fields.FloatField()
    measure_date = fields.DateField()
    measuring_device = fields.ObjectField(properties={
        'name': fields.TextField(),
        'id': fields.IntegerField(attr='id'),
        'building': fields.ObjectField(properties={
            'name': fields.TextField(),
            'id': fields.IntegerField(attr='id'),
            'user': fields.ObjectField(attr='user', properties={
                'email': fields.TextField(),
                'id': fields.IntegerField(attr='id'),
            })
    })
    })

    class Django:
        model = Measurement



