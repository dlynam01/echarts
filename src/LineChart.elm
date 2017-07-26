module LineChart exposing (PlotPoint, PlotPoints, plotPoints, plotLine)

import Html exposing (text, div, Html)


type alias PlotPoint =
    { x : Float
    , y : Float
    }


type alias PlotPoints =
    List PlotPoint


plotPoints : List ( Float, Float ) -> PlotPoints
plotPoints coords =
    List.map tupleToPlotPoint coords


plotLine : PlotPoints -> Html msg
plotLine plotPoints =
    div [] []


tupleToPlotPoint : ( Float, Float ) -> PlotPoint
tupleToPlotPoint coord =
    PlotPoint (Tuple.first coord) (Tuple.second coord)
