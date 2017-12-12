module Api.Object.StarredRepositoryEdge exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object exposing (Object)
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.StarredRepositoryEdge
build constructor =
    Object.object constructor


cursor : FieldDecoder String Api.Object.StarredRepositoryEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : Object node Api.Object.Repository -> FieldDecoder node Api.Object.StarredRepositoryEdge
node object =
    Object.single "node" [] object


starredAt : FieldDecoder String Api.Object.StarredRepositoryEdge
starredAt =
    Object.fieldDecoder "starredAt" [] Decode.string
