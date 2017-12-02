module Lib exposing (..)

import String exposing (uncons)


-- NOTE much easier with String.left ;)


(~=) : String -> String -> Bool
(~=) stringA stringB =
    let
        splitA =
            uncons stringA

        splitB =
            uncons stringB
    in
        case splitA of
            Just ( charA, _ ) ->
                case splitB of
                    Just ( charB, _ ) ->
                        if charA == charB then
                            True
                        else
                            False

                    Nothing ->
                        False

            Nothing ->
                False
