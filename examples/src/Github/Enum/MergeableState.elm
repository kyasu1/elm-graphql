-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.MergeableState exposing (MergeableState(..), decoder, fromString, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| Whether or not a PullRequest can be merged.

  - Mergeable - The pull request can be merged.
  - Conflicting - The pull request cannot be merged due to merge conflicts.
  - Unknown - The mergeability of the pull request is still being calculated.

-}
type MergeableState
    = Mergeable
    | Conflicting
    | Unknown


list : List MergeableState
list =
    [ Mergeable, Conflicting, Unknown ]


decoder : Decoder MergeableState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "MERGEABLE" ->
                        Decode.succeed Mergeable

                    "CONFLICTING" ->
                        Decode.succeed Conflicting

                    "UNKNOWN" ->
                        Decode.succeed Unknown

                    _ ->
                        Decode.fail ("Invalid MergeableState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : MergeableState -> String
toString enum =
    case enum of
        Mergeable ->
            "MERGEABLE"

        Conflicting ->
            "CONFLICTING"

        Unknown ->
            "UNKNOWN"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe MergeableState
fromString enumString =
    case enumString of
        "MERGEABLE" ->
            Just Mergeable

        "CONFLICTING" ->
            Just Conflicting

        "UNKNOWN" ->
            Just Unknown

        _ ->
            Nothing
