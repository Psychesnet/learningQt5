pragma Singleton
import QtQuick 2.0

Item {
    readonly property color colourBackground: "#f4c842"
    property alias fontAwesome: fontAwesomeLoader.name
    readonly property color colourNavigationBarBackground: "#000000"
    readonly property color colourNavigationBarFont: "#ffffff"
    readonly property int pixelSizeNavigationBarIcon: 42
    readonly property int pixelSizeNavigationBarText: 20
    readonly property real widthNavigationBarCollapsed: widthNavigationButtonIcon
    readonly property real heightNavigationBarExpanded: widthNavigationButton

    readonly property real widthNavigationButtonIcon: 48
    readonly property real heightNavigationButtonIcon: widthNavigationButtonIcon
    readonly property real widthNavigationButtonDescription: 100
    readonly property real heightNavigationButtonDescription: heightNavigationButtonIcon
    readonly property real widthNavigationButton: widthNavigationButtonIcon + widthNavigationButtonDescription
    readonly property real heightNavigationButton: Math.max(heightNavigationButtonIcon, heightNavigationButtonDescription)

    readonly property color colourCommandBarBackground: "#cecece"
    readonly property color colourCommandBarFont: "#131313"
    readonly property color colourCommandBarFontDisabled: "#636363"
    readonly property real heightCommandBar: heightCommandButton
    readonly property int pixelSizeCommandBarIcon: 32
    readonly property int pixelSizeCommandBarText: 12
    readonly property real widthCommandButton: 80
    readonly property real heightCommandButton: widthCommandButton
    FontLoader {
        id: fontAwesomeLoader
        source: "qrc:/assets/fontawesome.ttf"
    }
}
