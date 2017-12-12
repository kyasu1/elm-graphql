module Api.Object.ReactionConnection exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object exposing (Object)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.ReactionConnection
build constructor =
    Object.object constructor


edges : Object edges Api.Object.ReactionEdge -> FieldDecoder (List edges) Api.Object.ReactionConnection
edges object =
    Object.listOf "edges" [] object


nodes : Object nodes Api.Object.Reaction -> FieldDecoder (List nodes) Api.Object.ReactionConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : Object pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.ReactionConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.ReactionConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int


viewerHasReacted : FieldDecoder Bool Api.Object.ReactionConnection
viewerHasReacted =
    Object.fieldDecoder "viewerHasReacted" [] Decode.bool
