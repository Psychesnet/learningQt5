pragma Singleton
import QtQuick 2.0

Item {
    readonly property color colourBackground: "#f4c842"
    property alias fontAwesome: fontAwesomeLoader.name
    FontLoader {
        id: fontAwesomeLoader
        source: "qrc:/assets/fontawesome.ttf"
    }
}
