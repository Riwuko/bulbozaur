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


@registry.register_document
@measurements.document
class MeasurementDocument(Document):
    id = fields.IntegerField(attr='id')
    measure_value = fields.FloatField()
    measure_date = fields.DateField()
    measure_parameter = fields.TextField()
    device = fields.ObjectField(properties={
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



