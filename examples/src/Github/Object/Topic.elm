-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.Topic exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Topic
selection constructor =
    Object.selection constructor


id : Field Github.Scalar.Id Github.Object.Topic
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| The topic's name.
-}
name : Field String Github.Object.Topic
name =
    Object.fieldDecoder "name" [] Decode.string


{-| A list of related topics, including aliases of this topic, sorted with the most relevant
first.
-}
relatedTopics : SelectionSet decodesTo Github.Object.Topic -> Field (List decodesTo) Github.Object.Topic
relatedTopics object =
    Object.selectionField "relatedTopics" [] object (identity >> Decode.list)
