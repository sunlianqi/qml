import QtQuick 2.0

Item {
    id:root
    width: 48
    height: 48
    property alias text: label.text
    Rectangle{
        width: parent.width
        height: parent.height
        color: "#87CEFA"
        Text {
            anchors.centerIn: parent
            id: label
            text: qsTr("text")
            font.pixelSize: 20
        }
        border.color: Qt.lighter(color)
    }
}
