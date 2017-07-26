module Tests exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, list, int, string)
import Test exposing (..)
import LineChart exposing (..)


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
        [ test "should be defined as a list of plot points" <|
            \() ->
                LineChart.plotPoints [ ( 1, 3 ), ( 4, 5 ), ( 6, 7 ) ]
                    |> Expect.equal [ { x = 1, y = 3 }, { x = 4, y = 5 }, { x = 6, y = 7 } ]
        ]
