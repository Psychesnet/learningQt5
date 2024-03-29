import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import assets 1.0

Item {
    property alias iconCharacter: textIcon.text
    property alias description: textDescription.text
    property color hoverColour: Style.colourNavigationBarBackground
    signal navigationButtonClicked()
    width: Style.widthNavigationButton
    height: Style.heightNavigationButton
    Rectangle {
        id: background
        anchors.fill: parent
        color: Style.colourNavigationBarBackground
        states: [
            State {
                name: "hover"
                PropertyChanges {
                    target: background
                    color: Qt.lighter(hoverColour)
                }
            }
        ]
        Row {
            Text {
                id: textIcon
                width: Style.widthNavigationButtonIcon
                height: Style.heightNavigationButtonIcon
                font {
                    family: Style.fontAwesome
                    pixelSize: Style.pixelSizeNavigationBarIcon
                }
                color: Style.colourNavigationBarFont
                text: "\uf0c9"
            }
            Text {
                id: textDescription
                width: Style.widthNavigationButtonDescription
                height: Style.heightNavigationButtonDescription
                color: Style.colourNavigationBarFont
                text: "SET ME!"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: Style.pixelSizeNavigationBarText
            }
        }
        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onEntered: background.state = "hover"
            onExited: background.state = ""
            onClicked: navigationButtonClicked()
        }
    }
}
