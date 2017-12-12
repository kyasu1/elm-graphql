module Api.Object.UnlabeledEvent exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object exposing (Object)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.UnlabeledEvent
build constructor =
    Object.object constructor


actor : Object actor Api.Object.Actor -> FieldDecoder actor Api.Object.UnlabeledEvent
actor object =
    Object.single "actor" [] object


createdAt : FieldDecoder String Api.Object.UnlabeledEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Api.Object.UnlabeledEvent
id =
    Object.fieldDecoder "id" [] Decode.string


label : Object label Api.Object.Label -> FieldDecoder label Api.Object.UnlabeledEvent
label object =
    Object.single "label" [] object


labelable : Object labelable Api.Object.Labelable -> FieldDecoder labelable Api.Object.UnlabeledEvent
labelable object =
    Object.single "labelable" [] object
