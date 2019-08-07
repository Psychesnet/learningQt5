import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import assets 1.0

Item {
    property alias iconCharacter: textIcon.text
    property alias description: textDescription.text

    width: Style.widthNavigationButton
    height: Style.heightNavigationButton
    Rectangle {
        id: background
        anchors.fill: parent
        color: Style.colourNavigationBarBackground
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
                color: "#ffffff"
                text: "SET ME!"
            }
        }
    }
}
