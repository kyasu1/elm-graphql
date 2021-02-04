-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.CommitCommentThread exposing (..)

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

type alias CommentsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| The comments that exist in this thread.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.CommitCommentConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.CommitCommentThread
comments fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "comments" optionalArgs (object_) (identity)


{-| The commit the comments were made on.
-}
commit : SelectionSet decodesTo GithubNoFormat.Object.Commit
 -> SelectionSet decodesTo GithubNoFormat.Object.CommitCommentThread
commit object_ =
      Object.selectionForCompositeField "commit" [] (object_) (identity)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.CommitCommentThread
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The file the comments were made on.
-}
path : SelectionSet (Maybe String) GithubNoFormat.Object.CommitCommentThread
path =
      Object.selectionForField "(Maybe String)" "path" [] (Decode.string |> Decode.nullable)


{-| The position in the diff for the commit that the comment was made on.
-}
position : SelectionSet (Maybe Int) GithubNoFormat.Object.CommitCommentThread
position =
      Object.selectionForField "(Maybe Int)" "position" [] (Decode.int |> Decode.nullable)


{-| The repository associated with this node.
-}
repository : SelectionSet decodesTo GithubNoFormat.Object.Repository
 -> SelectionSet decodesTo GithubNoFormat.Object.CommitCommentThread
repository object_ =
      Object.selectionForCompositeField "repository" [] (object_) (identity)
