-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module WeatherOptionalArgs.Query exposing (CurrentWeatherOptionalArguments, CurrentWeatherRequiredArguments, currentWeather)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import WeatherOptionalArgs.Enum.TemperatureUnit
import WeatherOptionalArgs.InputObject
import WeatherOptionalArgs.Interface
import WeatherOptionalArgs.Object
import WeatherOptionalArgs.Scalar
import WeatherOptionalArgs.ScalarCodecs
import WeatherOptionalArgs.Union


type alias CurrentWeatherOptionalArguments =
    { units : OptionalArgument WeatherOptionalArgs.Enum.TemperatureUnit.TemperatureUnit }


type alias CurrentWeatherRequiredArguments =
    { city : String }


{-|

  - city -
  - units -

-}
currentWeather : (CurrentWeatherOptionalArguments -> CurrentWeatherOptionalArguments) -> CurrentWeatherRequiredArguments -> SelectionSet decodesTo WeatherOptionalArgs.Object.CurrentWeather -> SelectionSet decodesTo RootQuery
currentWeather fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { units = Absent }

        optionalArgs =
            [ Argument.optional "units" filledInOptionals.units (Encode.enum WeatherOptionalArgs.Enum.TemperatureUnit.toString) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "currentWeather" (optionalArgs ++ [ Argument.required "city" requiredArgs.city Encode.string ]) object_ identity