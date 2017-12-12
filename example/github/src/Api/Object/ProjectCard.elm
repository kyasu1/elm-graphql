module Api.Object.ProjectCard exposing (..)

import Api.Enum.ProjectCardState
import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object exposing (Object)
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.ProjectCard
build constructor =
    Object.object constructor


column : Object column Api.Object.ProjectColumn -> FieldDecoder column Api.Object.ProjectCard
column object =
    Object.single "column" [] object


content : FieldDecoder String Api.Object.ProjectCard
content =
    Object.fieldDecoder "content" [] Decode.string


createdAt : FieldDecoder String Api.Object.ProjectCard
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


creator : Object creator Api.Object.Actor -> FieldDecoder creator Api.Object.ProjectCard
creator object =
    Object.single "creator" [] object


databaseId : FieldDecoder Int Api.Object.ProjectCard
databaseId =
    Object.fieldDecoder "databaseId" [] Decode.int


id : FieldDecoder String Api.Object.ProjectCard
id =
    Object.fieldDecoder "id" [] Decode.string


note : FieldDecoder String Api.Object.ProjectCard
note =
    Object.fieldDecoder "note" [] Decode.string


project : Object project Api.Object.Project -> FieldDecoder project Api.Object.ProjectCard
project object =
    Object.single "project" [] object


projectColumn : Object projectColumn Api.Object.ProjectColumn -> FieldDecoder projectColumn Api.Object.ProjectCard
projectColumn object =
    Object.single "projectColumn" [] object


resourcePath : FieldDecoder String Api.Object.ProjectCard
resourcePath =
    Object.fieldDecoder "resourcePath" [] Decode.string


state : FieldDecoder Api.Enum.ProjectCardState.ProjectCardState Api.Object.ProjectCard
state =
    Object.fieldDecoder "state" [] Api.Enum.ProjectCardState.decoder


updatedAt : FieldDecoder String Api.Object.ProjectCard
updatedAt =
    Object.fieldDecoder "updatedAt" [] Decode.string


url : FieldDecoder String Api.Object.ProjectCard
url =
    Object.fieldDecoder "url" [] Decode.string
