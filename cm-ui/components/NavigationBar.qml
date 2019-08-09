import QtQuick 2.12
import assets 1.0
import components 1.0

Item {
    property bool isCollapsed: true
    anchors {
        top: parent.top
        left: parent.left
        bottom: parent.bottom
    }
    width: isCollapsed ? Style.widthNavigationBarCollapsed : Style.heightNavigationBarExpanded
    Rectangle {
        anchors.fill: parent
        color: Style.colourNavigationBarBackground
        Column {
            NavigationButton {
                iconCharacter: "\uf0c9"
                description: ""
            }
            NavigationButton {
                iconCharacter: "\uf015"
                description: "Dashboard"
            }
            NavigationButton {
                iconCharacter: "\uf0c0"
                description: "New User"
            }
            NavigationButton {
                iconCharacter: "\uf002"
                description: "Find User"
            }
            NavigationButton {
                iconCharacter: "\uf00d"
                description: "Exit"
            }
        }
    }
}
