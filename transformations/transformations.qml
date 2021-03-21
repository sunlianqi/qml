import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    width: bg.width
    height: bg.height

    Image {
        id: bg
        source: "assets/background_medium.png"
    }

    MouseArea{
        id: backgroundClicker
        anchors.fill: parent
        onClicked: {
            rocket1.x = 20
            rocket2.rotation = 0
            rocket3.rotation = 0
            rocket3.scale = 1.0
        }
    }

    ClickableImage{
        id: rocket1
        x: 20
        y: 100
        source: "assets/rocket.png"
        onClicked: {
            x += 5
        }
    }

    ClickableImage{
        id: rocket2
        x: 160
        y: 100
        source: "assets/rocket.png"
        smooth: true//平滑
        onClicked: {
            rotation += 5 //旋转
        }
    }

    ClickableImage{
        id: rocket3
        x: 300
        y: 100
        source: "assets/rocket.png"
        smooth: true
        onClicked: {
            rotation += 5
            scale -= 0.05 //比例
        }
    }
}
