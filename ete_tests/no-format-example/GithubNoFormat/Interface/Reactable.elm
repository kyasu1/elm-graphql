-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Interface.Reactable exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import GithubNoFormat.Object
import GithubNoFormat.Interface
import GithubNoFormat.Union
import GithubNoFormat.Scalar
import GithubNoFormat.InputObject
import GithubNoFormat.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)
import GithubNoFormat.Enum.ReactionContent

type alias Fragments decodesTo =
    {
    onCommitComment : SelectionSet decodesTo GithubNoFormat.Object.CommitComment,
 onIssue : SelectionSet decodesTo GithubNoFormat.Object.Issue,
 onIssueComment : SelectionSet decodesTo GithubNoFormat.Object.IssueComment,
 onPullRequest : SelectionSet decodesTo GithubNoFormat.Object.PullRequest,
 onPullRequestReviewComment : SelectionSet decodesTo GithubNoFormat.Object.PullRequestReviewComment
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
      Fragments decodesTo
      -> SelectionSet decodesTo GithubNoFormat.Interface.Reactable
fragments selections =
    Object.exhaustiveFragmentSelection
        [
         Object.buildFragment "CommitComment" selections.onCommitComment,
 Object.buildFragment "Issue" selections.onIssue,
 Object.buildFragment "IssueComment" selections.onIssueComment,
 Object.buildFragment "PullRequest" selections.onPullRequest,
 Object.buildFragment "PullRequestReviewComment" selections.onPullRequestReviewComment
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    {
      onCommitComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onIssue = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onIssueComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onPullRequest = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onPullRequestReviewComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }
{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) GithubNoFormat.Interface.Reactable
databaseId =
      Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Interface.Reactable
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet decodesTo GithubNoFormat.Object.ReactionGroup
 -> SelectionSet (Maybe (List decodesTo)) GithubNoFormat.Interface.Reactable
reactionGroups object_ =
      Object.selectionForCompositeField "reactionGroups" [] (object_) (identity >> Decode.list >> Decode.nullable)


type alias ReactionsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String
 , content : OptionalArgument GithubNoFormat.Enum.ReactionContent.ReactionContent
 , orderBy : OptionalArgument GithubNoFormat.InputObject.ReactionOrder }

{-| A list of Reactions left on the Issue.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - content - Allows filtering Reactions by emoji.
  - orderBy - Allows specifying the order in which reactions are returned.

-}
reactions : (ReactionsOptionalArguments -> ReactionsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.ReactionConnection
 -> SelectionSet decodesTo GithubNoFormat.Interface.Reactable
reactions fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, content = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "content" filledInOptionals.content ((Encode.enum GithubNoFormat.Enum.ReactionContent.toString)), Argument.optional "orderBy" filledInOptionals.orderBy (GithubNoFormat.InputObject.encodeReactionOrder) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "reactions" optionalArgs (object_) (identity)


{-| Can user react to this subject
-}
viewerCanReact : SelectionSet Bool GithubNoFormat.Interface.Reactable
viewerCanReact =
      Object.selectionForField "Bool" "viewerCanReact" [] (Decode.bool)
