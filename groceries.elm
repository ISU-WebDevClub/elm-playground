-- Show a list of items I need to buy at the grocery store.
-- This example is from https://elm-lang.org/examples/groceries

import Html exposing (..)

-- Can you spot the functions and lists?
main =
  div [] -- What might all these empty lists [] be?
    [ h1 [] [ text "My Grocery List" ]
    , ul []
        [ li [] [ text "Black Beans" ]
        , li [] [ text "Limes" ]
        , li [] [ text "Greek Yogurt" ]
        , li [] [ text "Cilantro" ]
        , li [] [ text "Honey" ]
        , li [] [ text "Sweet Potatoes" ]
        , li [] [ text "Cumin" ]
        , li [] [ text "Chili Powder" ]
        , li [] [ text "Quinoa" ]
        ]
    ]
