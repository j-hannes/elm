module Main exposing (..)

import String exposing (split)
import List exposing (length)
import Html exposing (Html, text)


wordCount : String -> Int
wordCount =
    split " " >> length


main : Html msg
main =
    wordCount "We are soon four Liebechens" |> toString |> text
