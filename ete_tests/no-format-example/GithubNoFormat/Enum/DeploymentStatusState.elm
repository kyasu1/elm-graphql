-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Enum.DeploymentStatusState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible states for a deployment status.

  - Pending - The deployment is pending.
  - Success - The deployment was successful.
  - Failure - The deployment has failed.
  - Inactive - The deployment is inactive.
  - Error - The deployment experienced an error.

-}
type DeploymentStatusState
    = Pending
    | Success
    | Failure
    | Inactive
    | Error
list : List DeploymentStatusState
list =
    [Pending, Success, Failure, Inactive, Error]
decoder : Decoder DeploymentStatusState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "PENDING" ->
                        Decode.succeed Pending

                    "SUCCESS" ->
                        Decode.succeed Success

                    "FAILURE" ->
                        Decode.succeed Failure

                    "INACTIVE" ->
                        Decode.succeed Inactive

                    "ERROR" ->
                        Decode.succeed Error

                    _ ->
                        Decode.fail ("Invalid DeploymentStatusState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
        )
        

{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : DeploymentStatusState -> String
toString enum =
    case enum of
        Pending ->
                "PENDING"


        Success ->
                "SUCCESS"


        Failure ->
                "FAILURE"


        Inactive ->
                "INACTIVE"


        Error ->
                "ERROR"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe DeploymentStatusState
fromString enumString =
    case enumString of
        "PENDING" ->
                Just Pending


        "SUCCESS" ->
                Just Success


        "FAILURE" ->
                Just Failure


        "INACTIVE" ->
                Just Inactive


        "ERROR" ->
                Just Error

        _ ->
                Nothing
