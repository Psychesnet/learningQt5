import QtQuick 2.0
import assets 1.0
import components 1.0

Item {
     Rectangle {
        anchors.fill: parent
        color: Style.colourBackground
        Text {
            text: qsTr("Create Client View")
            anchors.centerIn: parent
        }
        CommandBar {
            commandList: masterController.ui_commandController.ui_createClientViewContextCommands
        }
     }
}
