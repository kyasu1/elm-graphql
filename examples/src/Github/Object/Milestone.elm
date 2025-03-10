-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Milestone exposing (..)

import Github.Enum.IssueState
import Github.Enum.MilestoneState
import Github.Enum.PullRequestState
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


{-| `true` if the object is closed (definition of closed may depend on type)
-}
closed : SelectionSet Bool Github.Object.Milestone
closed =
    Object.selectionForField "Bool" "closed" [] Decode.bool


{-| Identifies the date and time when the object was closed.
-}
closedAt : SelectionSet (Maybe Github.ScalarCodecs.DateTime) Github.Object.Milestone
closedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "closedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.Milestone
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the actor who created the milestone.
-}
creator :
    SelectionSet decodesTo Github.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Github.Object.Milestone
creator object____ =
    Object.selectionForCompositeField "creator" [] object____ (Basics.identity >> Decode.nullable)


{-| Identifies the description of the milestone.
-}
description : SelectionSet (Maybe String) Github.Object.Milestone
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| Identifies the due date of the milestone.
-}
dueOn : SelectionSet (Maybe Github.ScalarCodecs.DateTime) Github.Object.Milestone
dueOn =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "dueOn" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


id : SelectionSet Github.ScalarCodecs.Id Github.Object.Milestone
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


type alias IssuesOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    , labels : OptionalArgument (List String)
    , orderBy : OptionalArgument Github.InputObject.IssueOrder
    , states : OptionalArgument (List Github.Enum.IssueState.IssueState)
    }


{-| A list of issues associated with the milestone.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - labels - A list of label names to filter the pull requests by.
  - orderBy - Ordering options for issues returned from the connection.
  - states - A list of states to filter the issues by.

-}
issues :
    (IssuesOptionalArguments -> IssuesOptionalArguments)
    -> SelectionSet decodesTo Github.Object.IssueConnection
    -> SelectionSet decodesTo Github.Object.Milestone
issues fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent, labels = Absent, orderBy = Absent, states = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "last" filledInOptionals____.last Encode.int, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "labels" filledInOptionals____.labels (Encode.string |> Encode.list), Argument.optional "orderBy" filledInOptionals____.orderBy Github.InputObject.encodeIssueOrder, Argument.optional "states" filledInOptionals____.states (Encode.enum Github.Enum.IssueState.toString |> Encode.list) ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForCompositeField "issues" optionalArgs____ object____ Basics.identity


{-| Identifies the number of the milestone.
-}
number : SelectionSet Int Github.Object.Milestone
number =
    Object.selectionForField "Int" "number" [] Decode.int


type alias PullRequestsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    , states : OptionalArgument (List Github.Enum.PullRequestState.PullRequestState)
    , labels : OptionalArgument (List String)
    , headRefName : OptionalArgument String
    , baseRefName : OptionalArgument String
    , orderBy : OptionalArgument Github.InputObject.IssueOrder
    }


{-| A list of pull requests associated with the milestone.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - states - A list of states to filter the pull requests by.
  - labels - A list of label names to filter the pull requests by.
  - headRefName - The head ref name to filter the pull requests by.
  - baseRefName - The base ref name to filter the pull requests by.
  - orderBy - Ordering options for pull requests returned from the connection.

-}
pullRequests :
    (PullRequestsOptionalArguments -> PullRequestsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.PullRequestConnection
    -> SelectionSet decodesTo Github.Object.Milestone
pullRequests fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent, states = Absent, labels = Absent, headRefName = Absent, baseRefName = Absent, orderBy = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "last" filledInOptionals____.last Encode.int, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "states" filledInOptionals____.states (Encode.enum Github.Enum.PullRequestState.toString |> Encode.list), Argument.optional "labels" filledInOptionals____.labels (Encode.string |> Encode.list), Argument.optional "headRefName" filledInOptionals____.headRefName Encode.string, Argument.optional "baseRefName" filledInOptionals____.baseRefName Encode.string, Argument.optional "orderBy" filledInOptionals____.orderBy Github.InputObject.encodeIssueOrder ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForCompositeField "pullRequests" optionalArgs____ object____ Basics.identity


{-| The repository associated with this milestone.
-}
repository :
    SelectionSet decodesTo Github.Object.Repository
    -> SelectionSet decodesTo Github.Object.Milestone
repository object____ =
    Object.selectionForCompositeField "repository" [] object____ Basics.identity


{-| The HTTP path for this milestone
-}
resourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.Milestone
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Identifies the state of the milestone.
-}
state : SelectionSet Github.Enum.MilestoneState.MilestoneState Github.Object.Milestone
state =
    Object.selectionForField "Enum.MilestoneState.MilestoneState" "state" [] Github.Enum.MilestoneState.decoder


{-| Identifies the title of the milestone.
-}
title : SelectionSet String Github.Object.Milestone
title =
    Object.selectionForField "String" "title" [] Decode.string


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.Milestone
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL for this milestone
-}
url : SelectionSet Github.ScalarCodecs.Uri Github.Object.Milestone
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)
