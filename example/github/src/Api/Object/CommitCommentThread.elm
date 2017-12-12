module Api.Object.CommitCommentThread exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object exposing (Object)
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.CommitCommentThread
build constructor =
    Object.object constructor


comments : ({ first : Maybe Int, after : Maybe String, last : Maybe Int, before : Maybe String } -> { first : Maybe Int, after : Maybe String, last : Maybe Int, before : Maybe String }) -> Object comments Api.Object.CommitCommentConnection -> FieldDecoder comments Api.Object.CommitCommentThread
comments fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Nothing, after = Nothing, last = Nothing, before = Nothing }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.single "comments" optionalArgs object


commit : Object commit Api.Object.Commit -> FieldDecoder commit Api.Object.CommitCommentThread
commit object =
    Object.single "commit" [] object


id : FieldDecoder String Api.Object.CommitCommentThread
id =
    Object.fieldDecoder "id" [] Decode.string


path : FieldDecoder String Api.Object.CommitCommentThread
path =
    Object.fieldDecoder "path" [] Decode.string


position : FieldDecoder Int Api.Object.CommitCommentThread
position =
    Object.fieldDecoder "position" [] Decode.int


repository : Object repository Api.Object.Repository -> FieldDecoder repository Api.Object.CommitCommentThread
repository object =
    Object.single "repository" [] object
