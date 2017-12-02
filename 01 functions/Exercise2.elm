module Main exposing (..)

import String exposing (length, toUpper)
import Html exposing (Html, text)


uppercaseLongerThan : Int -> String -> String
uppercaseLongerThan maxLength name =
    (if length name > maxLength then
        toUpper name
     else
        name
    )


printWithLength : String -> String
printWithLength input =
    input
        ++ " - name length: "
        ++ toString (length input)


main : Html msg
main =
    "Advanced Hannes"
        |> uppercaseLongerThan 10
        |> printWithLength
        |> text
