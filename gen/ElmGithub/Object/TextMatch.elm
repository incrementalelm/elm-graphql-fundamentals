-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.TextMatch exposing (fragment, highlights, property)

import ElmGithub.InputObject
import ElmGithub.Interface
import ElmGithub.Object
import ElmGithub.Scalar
import ElmGithub.ScalarCodecs
import ElmGithub.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| The specific text fragment within the property matched on.
-}
fragment : SelectionSet String ElmGithub.Object.TextMatch
fragment =
    Object.selectionForField "String" "fragment" [] Decode.string


{-| Highlights within the matched fragment.
-}
highlights : SelectionSet decodesTo ElmGithub.Object.TextMatchHighlight -> SelectionSet (List decodesTo) ElmGithub.Object.TextMatch
highlights object_ =
    Object.selectionForCompositeField "highlights" [] object_ (identity >> Decode.list)


{-| The property matched on.
-}
property : SelectionSet String ElmGithub.Object.TextMatch
property =
    Object.selectionForField "String" "property" [] Decode.string