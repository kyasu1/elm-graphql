-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Swapi.VerifyScalarDecoders exposing (verify)

{-
   This file is intended to be used to ensure that custom scalar decoder
   files are valid. It is compiled using `elm make` by the CLI.
-}

import CustomScalarCodecs
import Swapi.Scalar


verify : Swapi.Scalar.Codecs CustomScalarCodecs.Id CustomScalarCodecs.PosixTime
verify =
    CustomScalarCodecs.codecs
