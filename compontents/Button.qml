//Button.qml
import QtQuick 2.0

Item{
    id:root
    signal clicked
    width: 116
    height: 26
    Rectangle {
        id: rect
        anchors.fill: parent
        //alias（别名）功能，它可以将内部嵌套的QML元素的属性导出到外⾯使⽤
        property alias text: label.text
        width: parent
        height: parent
        color: "lightsteelblue"
        border.color: "slategrey"
        Text {
            id: label
            anchors.centerIn: parent
            text: "Start"
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
        }
    }
}

