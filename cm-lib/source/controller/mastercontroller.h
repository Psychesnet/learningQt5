#ifndef MASTERCONTROLLER_H
#define MASTERCONTROLLER_H

#include <QObject>
#include <QScopedPointer>
#include <QString>
#include <cm-lib_global.h>
#include <controller/navigationcontroller.h>
#include <controller/command-controller.h>

namespace cm {
namespace controllers {

class CMLIBSHARED_EXPORT MasterController : public QObject
{
    Q_OBJECT
    // QML can access welcomeMessage via ui_welcomeMessage variable
    Q_PROPERTY(QString ui_welcomeMessage READ welcomeMessage CONSTANT)
    Q_PROPERTY(cm::controllers::NavigationController *ui_navigationController READ navigationController CONSTANT)
    Q_PROPERTY(cm::controllers::CommandController *ui_commandController READ commandController CONSTANT)
public:
    explicit MasterController(QObject *parent = nullptr);
    ~MasterController();
    NavigationController *navigationController();
    CommandController *commandController();
    const QString& welcomeMessage() const;

signals:

public slots:

private:
    class Implementation;
    QScopedPointer<Implementation> implementation;
};

}}
#endif // MASTERCONTROLLER_H
