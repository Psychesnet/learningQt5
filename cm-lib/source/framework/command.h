#ifndef COMMAND_H
#define COMMAND_H

#include <functional>
#include <QObject>
#include <QScopedPointer>
#include <QString>
#include <cm-lib_global.h>

namespace cm {
namespace framework {
class CMLIBSHARED_EXPORT Command : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString ui_iconCharacter READ iconCharacter CONSTANT)
    Q_PROPERTY(QString ui_description READ description CONSTANT)
    Q_PROPERTY(bool ui_canExecute READ canExecute NOTIFY canExecuteChanged)
public:
    explicit Command(QObject *parent = nullptr,
                     const QString &iconCharacter = "",
                     const QString &description = "",
                     bool canExecute = true);
    virtual ~Command();

    const QString &iconCharacter() const;
    const QString &description() const;
    bool canExecute() const;

signals:
    void canExecuteChanged();
    void executed();

private:
    QString iconChar;
    QString desc;
    bool canExec;
};
}
}

#endif // COMMAND_H
