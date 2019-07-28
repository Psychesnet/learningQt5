import QtQuick 2.0

Column {
    id: columnWithRectangle
    Rectangle {
        anchors.fill: parent
        color: "#f4c842"
        Text {
            text: qsTr("Dashboard View")
            anchors.centerIn: parent
        }
    }
}
