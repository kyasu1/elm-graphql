-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.ReactionConnection exposing (..)

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

{-| A list of edges.
-}
edges : SelectionSet decodesTo GithubNoFormat.Object.ReactionEdge
 -> SelectionSet (Maybe (List (Maybe decodesTo))) GithubNoFormat.Object.ReactionConnection
edges object_ =
      Object.selectionForCompositeField "edges" [] (object_) (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| A list of nodes.
-}
nodes : SelectionSet decodesTo GithubNoFormat.Object.Reaction
 -> SelectionSet (Maybe (List (Maybe decodesTo))) GithubNoFormat.Object.ReactionConnection
nodes object_ =
      Object.selectionForCompositeField "nodes" [] (object_) (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet decodesTo GithubNoFormat.Object.PageInfo
 -> SelectionSet decodesTo GithubNoFormat.Object.ReactionConnection
pageInfo object_ =
      Object.selectionForCompositeField "pageInfo" [] (object_) (identity)


{-| Identifies the total count of items in the connection.
-}
totalCount : SelectionSet Int GithubNoFormat.Object.ReactionConnection
totalCount =
      Object.selectionForField "Int" "totalCount" [] (Decode.int)


{-| Whether or not the authenticated user has left a reaction on the subject.
-}
viewerHasReacted : SelectionSet Bool GithubNoFormat.Object.ReactionConnection
viewerHasReacted =
      Object.selectionForField "Bool" "viewerHasReacted" [] (Decode.bool)
