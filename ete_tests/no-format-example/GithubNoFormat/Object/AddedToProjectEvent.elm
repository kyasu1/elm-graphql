-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.AddedToProjectEvent exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import GithubNoFormat.Object
import GithubNoFormat.Interface
import GithubNoFormat.Union
import GithubNoFormat.Scalar
import GithubNoFormat.InputObject
import GithubNoFormat.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)

{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo GithubNoFormat.Interface.Actor
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.AddedToProjectEvent
actor object____ =
      Object.selectionForCompositeField "actor" [] (object____) (Basics.identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.AddedToProjectEvent
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) GithubNoFormat.Object.AddedToProjectEvent
databaseId =
      Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.AddedToProjectEvent
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)
