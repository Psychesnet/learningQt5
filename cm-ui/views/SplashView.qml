import QtQuick 2.0
import assets 1.0

Item {
     Rectangle {
        anchors.fill: parent
        color: Style.colourBackground
        Text {
            text: qsTr("Splash View")
            anchors.centerIn: parent
        }
     }
}
