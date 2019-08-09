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
                hoverColour: "#993333"
                onNavigationButtonClicked: isCollapsed = !isCollapsed
            }
            NavigationButton {
                iconCharacter: "\uf015"
                description: "Dashboard"
                hoverColour: "#993333"
                onNavigationButtonClicked: masterController.ui_navigationController.goDashboardView()
            }
            NavigationButton {
                iconCharacter: "\uf0c0"
                description: "New User"
                hoverColour: "#993333"
                onNavigationButtonClicked: masterController.ui_navigationController.goCreateClientView()
            }
            NavigationButton {
                iconCharacter: "\uf002"
                description: "Find User"
                hoverColour: "#993333"
                onNavigationButtonClicked: masterController.ui_navigationController.goFindClientView()
            }
            NavigationButton {
                iconCharacter: "\uf00d"
                description: "Exit"
                hoverColour: "#993333"
                onNavigationButtonClicked: Qt.quit()
            }
        }
    }
}
