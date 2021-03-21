import QtQuick 2.0

Rectangle{
    width: 48
    height: 48
    border.color: Qt.lighter(color)
    property alias text: label.text

    Text {
        id: label
        text: qsTr("text")
        anchors.centerIn: parent
        font.pixelSize: 20
    }
}
