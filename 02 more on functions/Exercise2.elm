module Main exposing (..)

import Html exposing (Html, text)
import Lib exposing ((~=))


main : Html msg
main =
    "foo" ~= "Far" |> toString |> text
