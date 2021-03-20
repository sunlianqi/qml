import QtQuick 2.12
import QtGraphicalEffects 1.0

Image {
    id: root
    source: "images/background.png"
    property int blurRadius: 0

    Image {
        id: pole
        source: "images/pole.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
    }

    Image {
        id: wheel
        source: "images/pinwheel.png"
        anchors.centerIn: parent
        Behavior on rotation {
            NumberAnimation{
                duration: 250
            }
        }
        layer.effect: FastBlur {
            id: blur
            radius: root.blurRadius
            Behavior on radius {
                NumberAnimation {
                    duration: 250
                }
            }
        }
        layer.enabled: true
    }

    MouseArea{
        anchors.fill: parent
        onPressed: {
            wheel.rotation += 90
            root.blurRadius = 16
        }
        onReleased: {
            root.blurRadius = 0
        }
    }
}
