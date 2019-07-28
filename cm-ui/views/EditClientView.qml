import QtQuick 2.0

Column {
    id: columnWithRectangle
    Rectangle {
        anchors.fill: parent
        color: "#f4c842"
        Text {
            text: qsTr("Edit Client View")
            anchors.centerIn: parent
        }
    }
}
