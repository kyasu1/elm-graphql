-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Enum.OrganizationInvitationRole exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible organization invitation roles.

  - DirectMember - The user is invited to be a direct member of the organization.
  - Admin - The user is invited to be an admin of the organization.
  - BillingManager - The user is invited to be a billing manager of the organization.
  - Reinstate - The user's previous role will be reinstated.

-}
type OrganizationInvitationRole
    = DirectMember
    | Admin
    | BillingManager
    | Reinstate
list : List OrganizationInvitationRole
list =
    [DirectMember, Admin, BillingManager, Reinstate]
decoder : Decoder OrganizationInvitationRole
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "DIRECT_MEMBER" ->
                        Decode.succeed DirectMember

                    "ADMIN" ->
                        Decode.succeed Admin

                    "BILLING_MANAGER" ->
                        Decode.succeed BillingManager

                    "REINSTATE" ->
                        Decode.succeed Reinstate

                    _ ->
                        Decode.fail ("Invalid OrganizationInvitationRole type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
        )
        

{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : OrganizationInvitationRole -> String
toString enum =
    case enum of
        DirectMember ->
                "DIRECT_MEMBER"


        Admin ->
                "ADMIN"


        BillingManager ->
                "BILLING_MANAGER"


        Reinstate ->
                "REINSTATE"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe OrganizationInvitationRole
fromString enumString =
    case enumString of
        "DIRECT_MEMBER" ->
                Just DirectMember


        "ADMIN" ->
                Just Admin


        "BILLING_MANAGER" ->
                Just BillingManager


        "REINSTATE" ->
                Just Reinstate

        _ ->
                Nothing
