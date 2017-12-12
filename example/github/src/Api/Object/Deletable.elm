module Api.Object.Deletable exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object exposing (Object)
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.Deletable
build constructor =
    Object.object constructor


viewerCanDelete : FieldDecoder Bool Api.Object.Deletable
viewerCanDelete =
    Object.fieldDecoder "viewerCanDelete" [] Decode.bool
