import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 400
    height: 240
    color: "#000000"
    Grid{
        columns: 3
        anchors.fill: parent
        anchors.margins: 10
        spacing: 8
        GreenSquare{
            BlueSquare{
                width: 12
                anchors.fill: parent
                anchors.margins: 8
                text:"1"
            }
        }
        GreenSquare{
            BlueSquare{
                y:8
                anchors.left: parent.left
                anchors.leftMargin: 8
                text:"2"
            }
        }
        GreenSquare{
            BlueSquare{
                y:8
                anchors.left: parent.right
                text:"3"
            }
        }
        GreenSquare{
            BlueSquare{
                id: blue1
                height: 24
                y:18
                anchors.horizontalCenter: parent.horizontalCenter
                text: "4"
            }
            BlueSquare{
                id: blue2
                width: 72
                height: 24
                anchors.top: blue1.bottom
                anchors.topMargin: 4
                anchors.horizontalCenter: blue1.horizontalCenter
                text: "5"
            }
        }
        GreenSquare{
            BlueSquare{
                anchors.centerIn: parent
                text: "6"
            }
        }
        GreenSquare{
            BlueSquare{
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -12
                anchors.verticalCenter: parent.verticalCenter
                text: "7"
            }
        }
    }
}
