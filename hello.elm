import Html exposing (..)
import Html.Events exposing (..)


main =
  beginnerProgram { model = model , view = view , update = update }

--model
type alias Model =
  Int

model : Model
model =
  0

--update
type Msg =
  Inc | Dec

update : Msg -> Model -> Model
update msg model =
  case msg of
    Inc ->
      model + 1
    Dec ->
      model - 1

--view
view : Model -> Html Msg
view model =
  div []
  [ button [onClick Dec][text "-"]
  , div [] [ text (toString model) ]
  , button [onClick Inc][text "+"]
  ]

myStyle =
  [ ("width", "100%")
    , ("height", "40px")
    , ("padding", "10px 0")
    , ("font-size", "2em")
    , ("text-align", "center")
    ]
