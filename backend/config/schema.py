import graphene
import graphql_jwt

from smarthome.schema import Query as SmartHomeSchema
from smarthome.schema import Mutation as SmartHomeMutation


class Query(SmartHomeSchema, graphene.ObjectType):
    pass


class Mutation(SmartHomeMutation, graphene.ObjectType):
    token_auth = graphql_jwt.ObtainJSONWebToken.Field()
    verify_token = graphql_jwt.Verify.Field()
    refresh_token = graphql_jwt.Refresh.Field()


schema = graphene.Schema(query=Query, mutation=Mutation)
