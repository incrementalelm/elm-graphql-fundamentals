-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.SecurityAdvisoryPackage exposing (ecosystem, name)

import ElmGithub.Enum.SecurityAdvisoryEcosystem
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


{-| The ecosystem the package belongs to, e.g. RUBYGEMS, NPM
-}
ecosystem : SelectionSet ElmGithub.Enum.SecurityAdvisoryEcosystem.SecurityAdvisoryEcosystem ElmGithub.Object.SecurityAdvisoryPackage
ecosystem =
    Object.selectionForField "Enum.SecurityAdvisoryEcosystem.SecurityAdvisoryEcosystem" "ecosystem" [] ElmGithub.Enum.SecurityAdvisoryEcosystem.decoder


{-| The package name
-}
name : SelectionSet String ElmGithub.Object.SecurityAdvisoryPackage
name =
    Object.selectionForField "String" "name" [] Decode.string