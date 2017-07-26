module Tests exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, list, int, string)
import Test exposing (..)
import LineChart exposing (..)
import Html exposing (div)


plotPoint : Test
plotPoint =
    describe "plotPoint"
        [ test "should define a plot point" <|
            \() ->
                PlotPoint 1 2
                    |> Expect.equal { x = 1, y = 2 }
        ]


plotPoints : Test
plotPoints =
    describe "plotPoints"
        [ test "should produce a PlotPoints in the correct order" <|
            \() ->
                LineChart.plotPoints [ ( 1, 3 ), ( 4, 5 ), ( 6, 7 ) ]
                    |> Expect.equal [ { x = 1, y = 3 }, { x = 4, y = 5 }, { x = 6, y = 7 } ]
        ]


plotLine : Test
plotLine =
    describe "plotLine"
        [ test "should plot a straight line" <|
            \() ->
                let
                    points =
                        LineChart.plotPoints [ ( 1, 1 ), ( 2, 1 ), ( 3, 1 ) ]
                in
                    LineChart.plotLine points
                        |> Expect.equal (div [] [])
        ]
