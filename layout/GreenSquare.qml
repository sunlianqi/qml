import QtQuick 2.0

Item {
    id:root
    width: 100
    height: 100
    Rectangle{
        width: parent.width
        height: parent.height
        color: "#00CD00"
        border.color: Qt.lighter(color)
    }
}

