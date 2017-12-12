module Api.Object.GpgSignature exposing (..)

import Api.Enum.GitSignatureState
import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object exposing (Object)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.GpgSignature
build constructor =
    Object.object constructor


email : FieldDecoder String Api.Object.GpgSignature
email =
    Object.fieldDecoder "email" [] Decode.string


isValid : FieldDecoder Bool Api.Object.GpgSignature
isValid =
    Object.fieldDecoder "isValid" [] Decode.bool


keyId : FieldDecoder String Api.Object.GpgSignature
keyId =
    Object.fieldDecoder "keyId" [] Decode.string


payload : FieldDecoder String Api.Object.GpgSignature
payload =
    Object.fieldDecoder "payload" [] Decode.string


signature : FieldDecoder String Api.Object.GpgSignature
signature =
    Object.fieldDecoder "signature" [] Decode.string


signer : Object signer Api.Object.User -> FieldDecoder signer Api.Object.GpgSignature
signer object =
    Object.single "signer" [] object


state : FieldDecoder Api.Enum.GitSignatureState.GitSignatureState Api.Object.GpgSignature
state =
    Object.fieldDecoder "state" [] Api.Enum.GitSignatureState.decoder
