#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <controller/mastercontroller.h>
#include <controller/navigationcontroller.h>
#include <controller/command-controller.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    // load module called CM with version 1.0 into metadata
    qmlRegisterType<cm::controllers::MasterController>("CM", 1, 0, "MasterController");
    qmlRegisterType<cm::controllers::NavigationController>("CM", 1, 0, "NavigationController");
    qmlRegisterType<cm::controllers::CommandController>("CM", 1, 0, "CommandController");
    qmlRegisterType<cm::framework::Command>("CM", 1, 0, "Command");

    // inject controller into root QML context
    cm::controllers::MasterController masterController;
    QQmlApplicationEngine engine;
    // create our qml module, need the path to get it
    engine.addImportPath("qrc:/");
    engine.rootContext()->setContextProperty("masterController", &masterController);
    const QUrl url(QStringLiteral("qrc:/views/MasterView.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
