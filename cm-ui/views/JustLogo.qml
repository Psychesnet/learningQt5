import QtQuick 2.0

Item {
    Rectangle {
        anchors.fill: parent
        Text {
            id: logoId
            font.pointSize: 33
            color: "red"
            anchors.centerIn: parent
            text: qsTr("Just loading logo......")
        }
    }
}
