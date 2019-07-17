#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
// my classes
#include <controller/mastercontroller.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    // load module called CM with version 1.0 into metadata
    qmlRegisterType<cm::controllers::MasterController>("CM", 1, 0, "MasterController");

    // inject controller into root QML context
    cm::controllers::MasterController masterController;
    QQmlApplicationEngine engine;
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
