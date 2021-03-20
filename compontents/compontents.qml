//Compontents.qml
import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    id: name
    //自定义Button组件，注意：Button.qml文件名要大写，小写调用不了，不知道为什么
    Button {
        id: button
        x:12; y:12
        onClicked: {
            status.text = "Button clicked!"
        }
    }
    Text {
        id: status
        x: 12; y:76
        width: 116; height: 26
        text: qsTr("waiting...")
        horizontalAlignment: Text.AlignHCenter
    }
}
