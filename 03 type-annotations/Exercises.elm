module Main exposing (..)

import List exposing (map)
import Html exposing (Html, text)


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


calculateFreeItems : Int -> Int -> Item -> Item
calculateFreeItems minQty free item =
    if item.qty >= minQty && item.freeQty == 0 then
        { item | freeQty = free }
    else
        item


main : Html msg
main =
    cart
        |> map (calculateFreeItems 10 3)
        |> map (calculateFreeItems 5 1)
        |> toString
        |> text
