module LineChart exposing (PlotPoint, PlotPoints, plotPoints)

import Html exposing (text)


type alias PlotPoint =
    { x : Float
    , y : Float
    }


type alias PlotPoints =
    List PlotPoint


tupleToPlotPoint : ( Float, Float ) -> PlotPoint
tupleToPlotPoint coord =
    PlotPoint (Tuple.first coord) (Tuple.second coord)


plotPoints : List ( Float, Float ) -> PlotPoints
plotPoints coords =
    List.map tupleToPlotPoint coords
