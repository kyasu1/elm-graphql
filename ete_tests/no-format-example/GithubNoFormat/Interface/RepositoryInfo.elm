-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Interface.RepositoryInfo exposing (..)

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
import GithubNoFormat.Enum.RepositoryLockReason

type alias Fragments decodesTo =
    {
    onRepository : SelectionSet decodesTo GithubNoFormat.Object.Repository,
 onRepositoryInvitationRepository : SelectionSet decodesTo GithubNoFormat.Object.RepositoryInvitationRepository
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
      Fragments decodesTo
      -> SelectionSet decodesTo GithubNoFormat.Interface.RepositoryInfo
fragments selections =
    Object.exhaustiveFragmentSelection
        [
         Object.buildFragment "Repository" selections.onRepository,
 Object.buildFragment "RepositoryInvitationRepository" selections.onRepositoryInvitationRepository
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    {
      onRepository = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onRepositoryInvitationRepository = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }
{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Interface.RepositoryInfo
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The description of the repository.
-}
description : SelectionSet (Maybe String) GithubNoFormat.Interface.RepositoryInfo
description =
      Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The description of the repository rendered to HTML.
-}
descriptionHTML : SelectionSet GithubNoFormat.ScalarCodecs.Html GithubNoFormat.Interface.RepositoryInfo
descriptionHTML =
      Object.selectionForField "ScalarCodecs.Html" "descriptionHTML" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| Returns how many forks there are of this repository in the whole network.
-}
forkCount : SelectionSet Int GithubNoFormat.Interface.RepositoryInfo
forkCount =
      Object.selectionForField "Int" "forkCount" [] (Decode.int)


{-| Indicates if the repository has issues feature enabled.
-}
hasIssuesEnabled : SelectionSet Bool GithubNoFormat.Interface.RepositoryInfo
hasIssuesEnabled =
      Object.selectionForField "Bool" "hasIssuesEnabled" [] (Decode.bool)


{-| Indicates if the repository has wiki feature enabled.
-}
hasWikiEnabled : SelectionSet Bool GithubNoFormat.Interface.RepositoryInfo
hasWikiEnabled =
      Object.selectionForField "Bool" "hasWikiEnabled" [] (Decode.bool)


{-| The repository's URL.
-}
homepageUrl : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.Uri) GithubNoFormat.Interface.RepositoryInfo
homepageUrl =
      Object.selectionForField "(Maybe ScalarCodecs.Uri)" "homepageUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| Indicates if the repository is unmaintained.
-}
isArchived : SelectionSet Bool GithubNoFormat.Interface.RepositoryInfo
isArchived =
      Object.selectionForField "Bool" "isArchived" [] (Decode.bool)


{-| Identifies if the repository is a fork.
-}
isFork : SelectionSet Bool GithubNoFormat.Interface.RepositoryInfo
isFork =
      Object.selectionForField "Bool" "isFork" [] (Decode.bool)


{-| Indicates if the repository has been locked or not.
-}
isLocked : SelectionSet Bool GithubNoFormat.Interface.RepositoryInfo
isLocked =
      Object.selectionForField "Bool" "isLocked" [] (Decode.bool)


{-| Identifies if the repository is a mirror.
-}
isMirror : SelectionSet Bool GithubNoFormat.Interface.RepositoryInfo
isMirror =
      Object.selectionForField "Bool" "isMirror" [] (Decode.bool)


{-| Identifies if the repository is private.
-}
isPrivate : SelectionSet Bool GithubNoFormat.Interface.RepositoryInfo
isPrivate =
      Object.selectionForField "Bool" "isPrivate" [] (Decode.bool)


{-| The license associated with the repository
-}
license : SelectionSet (Maybe String) GithubNoFormat.Interface.RepositoryInfo
license =
      Object.selectionForField "(Maybe String)" "license" [] (Decode.string |> Decode.nullable)


{-| The license associated with the repository
-}
licenseInfo : SelectionSet decodesTo GithubNoFormat.Object.License
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Interface.RepositoryInfo
licenseInfo object_ =
      Object.selectionForCompositeField "licenseInfo" [] (object_) (identity >> Decode.nullable)


{-| The reason the repository has been locked.
-}
lockReason : SelectionSet (Maybe GithubNoFormat.Enum.RepositoryLockReason.RepositoryLockReason) GithubNoFormat.Interface.RepositoryInfo
lockReason =
      Object.selectionForField "(Maybe Enum.RepositoryLockReason.RepositoryLockReason)" "lockReason" [] (GithubNoFormat.Enum.RepositoryLockReason.decoder |> Decode.nullable)


{-| The repository's original mirror URL.
-}
mirrorUrl : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.Uri) GithubNoFormat.Interface.RepositoryInfo
mirrorUrl =
      Object.selectionForField "(Maybe ScalarCodecs.Uri)" "mirrorUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The name of the repository.
-}
name : SelectionSet String GithubNoFormat.Interface.RepositoryInfo
name =
      Object.selectionForField "String" "name" [] (Decode.string)


{-| The repository's name with owner.
-}
nameWithOwner : SelectionSet String GithubNoFormat.Interface.RepositoryInfo
nameWithOwner =
      Object.selectionForField "String" "nameWithOwner" [] (Decode.string)


{-| The User owner of the repository.
-}
owner : SelectionSet decodesTo GithubNoFormat.Interface.RepositoryOwner
 -> SelectionSet decodesTo GithubNoFormat.Interface.RepositoryInfo
owner object_ =
      Object.selectionForCompositeField "owner" [] (object_) (identity)


{-| Identifies when the repository was last pushed to.
-}
pushedAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Interface.RepositoryInfo
pushedAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "pushedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The HTTP path for this repository
-}
resourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Interface.RepositoryInfo
resourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


type alias ShortDescriptionHTMLOptionalArguments = { limit : OptionalArgument Int }

{-| A description of the repository, rendered to HTML without any links in it.

  - limit - How many characters to return.

-}
shortDescriptionHTML : (ShortDescriptionHTMLOptionalArguments -> ShortDescriptionHTMLOptionalArguments)
 -> SelectionSet GithubNoFormat.ScalarCodecs.Html GithubNoFormat.Interface.RepositoryInfo
shortDescriptionHTML fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { limit = Absent }

        optionalArgs =
            [ Argument.optional "limit" filledInOptionals.limit (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionForField "ScalarCodecs.Html" "shortDescriptionHTML" optionalArgs (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Interface.RepositoryInfo
updatedAt =
      Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL for this repository
-}
url : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Interface.RepositoryInfo
url =
      Object.selectionForField "ScalarCodecs.Uri" "url" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)
