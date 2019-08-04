import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import assets 1.0

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
            Row {
                Text {
                    font {
                        family: Style.fontAwesome
                        pixelSize: 42
                    }
                    color: "#ffffff"
                    text: "\uf0c9"
                }
                Text {
                    color: "#ffffff"
                }
            }
            Row {
                Text {
                    font {
                        family: Style.fontAwesome
                        pixelSize: 42
                    }
                    color: "#ffffff"
                    text: "\uf015"
                }
                Text {
                    color: "#ffffff"
                    text: qsTr("Dashboard")
                }
            }
            Row {
                Text {
                    font {
                        family: Style.fontAwesome
                        pixelSize: 42
                    }
                    color: "#ffffff"
                    text: "\uf0c0"
                }
                Text {
                    color: "#ffffff"
                    text: qsTr("New User")
                }
            }
            Row {
                Text {
                    font {
                        family: Style.fontAwesome
                        pixelSize: 42
                    }
                    color: "#ffffff"
                    text: "\uf002"
                }
                Text {
                    color: "#ffffff"
                    text: qsTr("Find User")
                }
            }
            Row {
                Text {
                    font {
                        family: Style.fontAwesome
                        pixelSize: 42
                    }
                    color: "#ffffff"
                    text: "\uf00d"
                }
                Text {
                    color: "#ffffff"
                    text: qsTr("Exit...")
                }
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
