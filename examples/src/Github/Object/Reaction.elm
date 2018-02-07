-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.Reaction exposing (..)

import Github.Enum.ReactionContent
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Reaction
selection constructor =
    Object.selection constructor


{-| Identifies the emoji reaction.
-}
content : Field Github.Enum.ReactionContent.ReactionContent Github.Object.Reaction
content =
    Object.fieldDecoder "content" [] Github.Enum.ReactionContent.decoder


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.Reaction
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.Reaction
databaseId =
    Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.Reaction
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| The reactable piece of content
-}
reactable : SelectionSet decodesTo Github.Interface.Reactable -> Field decodesTo Github.Object.Reaction
reactable object =
    Object.selectionField "reactable" [] object identity


{-| Identifies the user who created this reaction.
-}
user : SelectionSet decodesTo Github.Object.User -> Field (Maybe decodesTo) Github.Object.Reaction
user object =
    Object.selectionField "user" [] object (identity >> Decode.nullable)
