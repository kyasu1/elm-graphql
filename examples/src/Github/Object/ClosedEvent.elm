-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ClosedEvent exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarCodecs
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Identifies the actor who performed the event.
-}
actor :
    SelectionSet decodesTo Github.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Github.Object.ClosedEvent
actor object____ =
    Object.selectionForCompositeField "actor" [] object____ (Basics.identity >> Decode.nullable)


{-| Object that was closed.
-}
closable :
    SelectionSet decodesTo Github.Interface.Closable
    -> SelectionSet decodesTo Github.Object.ClosedEvent
closable object____ =
    Object.selectionForCompositeField "closable" [] object____ Basics.identity


{-| Object which triggered the creation of this event.
-}
closer :
    SelectionSet decodesTo Github.Union.Closer
    -> SelectionSet (Maybe decodesTo) Github.Object.ClosedEvent
closer object____ =
    Object.selectionForCompositeField "closer" [] object____ (Basics.identity >> Decode.nullable)


{-| Identifies the commit associated with the 'closed' event.
-}
commit :
    SelectionSet decodesTo Github.Object.Commit
    -> SelectionSet (Maybe decodesTo) Github.Object.ClosedEvent
commit object____ =
    Object.selectionForCompositeField "commit" [] object____ (Basics.identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.ClosedEvent
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


id : SelectionSet Github.ScalarCodecs.Id Github.Object.ClosedEvent
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)
