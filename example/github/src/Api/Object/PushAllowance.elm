module Api.Object.PushAllowance exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object exposing (Object)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.PushAllowance
build constructor =
    Object.object constructor


actor : FieldDecoder String Api.Object.PushAllowance
actor =
    Object.fieldDecoder "actor" [] Decode.string


id : FieldDecoder String Api.Object.PushAllowance
id =
    Object.fieldDecoder "id" [] Decode.string


protectedBranch : Object protectedBranch Api.Object.ProtectedBranch -> FieldDecoder protectedBranch Api.Object.PushAllowance
protectedBranch object =
    Object.single "protectedBranch" [] object
