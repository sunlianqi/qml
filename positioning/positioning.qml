import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle {
    id: root
    width: 500
    height: 1000
    color: "#2b2323"
    property variant colorArray: ["#00bde3","#67c111","#ea7025"]

    Column{
        id: cloumn
        x: 10
        y: 10
        spacing: 8
        Square{text:"1";color: "#ea7025";}
        Square{text:"2";color: "#AFEEEE";width: 96}
        Square{text:"3";color: "#90EE90"}
    }

    Row{
        id: row
        anchors.top: cloumn.bottom;
        anchors.left: cloumn.left
        anchors.topMargin: 50
        spacing: 8
        Square{text:"4";color: "#ea7025"}
        Square{text:"5";color: "#AFEEEE";width: 96}
        Square{text:"6";color: "#90EE90"}
    }

    Grid{
        id: grid
        rows: 2
        columns: 2
        anchors.top: row.bottom
        anchors.topMargin: 50
        anchors.left: cloumn.left
        spacing: 8
        Square{text:"7";color: "#ea7025"}
        Square{text:"8";color: "#ea7025"}
        Square{text:"9";color: "#ea7025"}
        Square{text:"10";color: "#ea7025"}
    }

    Flow{
        id: flow
        width: 180
        anchors.top: grid.bottom
        anchors.topMargin: 50
        anchors.left: cloumn.left
        spacing: 8
        Square{text:"4";color: "#ea7025"}
        Square{text:"5";color: "#AFEEEE";width: 96}
        Square{text:"6";color: "#90EE90"}
    }

    Grid{
        anchors.top: flow.bottom
        anchors.topMargin: 50
        anchors.left: cloumn.left
        spacing: 8
        Repeater{
            model:16
            Square{
                property int colorIndex: Math.floor(Math.random()*3)
                color: root.colorArray[colorIndex]
            }
        }
    }
}
