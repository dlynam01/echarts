module LineChartTest exposing (..)

import Expect
import Fuzz exposing (Fuzzer, list, int, string)
import Test exposing (..)
import LineChart exposing (..)


suite : Test
suite =
    describe "LineChart module"
        [ testPlotPoint
        ]


testPlotPoint : Test
testPlotPoint =
    describe "plotPoint"
        [ test "should define a plot point" <|
            \() ->
                Expect.equal (PlotPoint 1 2) { x = 4, y = 5 }
        ]
