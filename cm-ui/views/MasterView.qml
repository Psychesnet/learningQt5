import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import assets 1.0
import components 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Client Management")
    Component.onCompleted: {
        contentFrame.replace("qrc:/views/SplashView.qml")
    }
    Connections {
        target: masterController.ui_navigationController
        onGoCreateClientView:
            contentFrame.replace("qrc:/views/CreateClientView.qml")
        onGoDashboardView:
            contentFrame.replace("qrc:/views/DashboardView.qml")
        onGoEditClientView:
            contentFrame.replace("qrc:/views/EditClientView.qml", {selectedClient: client})
        onGoFindClientView:
            contentFrame.replace("qrc:/views/FindClientView.qml")
    }
    Rectangle {
        id: navigationBar
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left
        }
        width: 100
        color: "#000000"
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
    StackView {
        id: contentFrame
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: navigationBar.right
            right: parent.right
        }
        initialItem: Qt.resolvedUrl("qrc:/views/JustLogo.qml")
        clip: true
    }
    
}
