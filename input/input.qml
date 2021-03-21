import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle{
    width: 200
    height: 200
    color: "linen"

    TLineEditV1{
        id:input1
        x: 8; y: 8
        width: 96; height: 20
        text: "input1"
        KeyNavigation.tab: input2
        focus: true
    }

    TLineEditV1{
        id:input2
        x: 8; y: 36
        width: 96; height: 20
        text: "input2"
        KeyNavigation.tab: input1
    }

    TTextEdit{
        x: 8; y: 62
        id:input3
        text: "Text Edit"
    }
}

