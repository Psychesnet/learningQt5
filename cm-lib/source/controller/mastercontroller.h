#ifndef MASTERCONTROLLER_H
#define MASTERCONTROLLER_H

#include <QObject>
#include <QScopedPointer>
#include <QString>
#include <cm-lib_global.h>
#include <controller/navigationcontroller.h>

namespace cm {
namespace controllers {

class CMLIBSHARED_EXPORT MasterController : public QObject
{
    Q_OBJECT
    // QML can access welcomeMessage via ui_welcomeMessage variable
    Q_PROPERTY(QString ui_welcomeMessage READ GetWelcomeMessage CONSTANT)
    Q_PROPERTY(cm::controllers::NavigationController *ui_navigationController READ GetNavigationController CONSTANT)
public:
    explicit MasterController(QObject *parent = nullptr);
    ~MasterController();
    NavigationController *GetNavigationController();
    const QString& GetWelcomeMessage() const;


private:
    NavigationController *navigationController{nullptr};
    QString welcomeMessage = "This is MasterController to Major Tom";

signals:

public slots:

};

}}
#endif // MASTERCONTROLLER_H
