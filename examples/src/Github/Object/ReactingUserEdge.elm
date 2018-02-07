-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.ReactingUserEdge exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReactingUserEdge
selection constructor =
    Object.selection constructor


cursor : Field String Github.Object.ReactingUserEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.ReactingUserEdge
node object =
    Object.selectionField "node" [] object identity


{-| The moment when the user made the reaction.
-}
reactedAt : Field Github.Scalar.DateTime Github.Object.ReactingUserEdge
reactedAt =
    Object.fieldDecoder "reactedAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)
