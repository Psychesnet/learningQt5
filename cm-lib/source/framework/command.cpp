#include "command.h"

namespace cm {
namespace framework {
Command::Command(QObject *parent,
                 const QString &iconCharacter,
                 const QString &description,
                 bool canExecute):
                QObject(parent),
                iconChar(iconCharacter),
                desc(description),
                canExec(canExecute)
{

}

Command::~Command()
{

}

const QString & Command::iconCharacter() const
{
    return iconChar;
}

const QString & Command::description() const
{
    return desc;
}

bool Command::canExecute() const
{
    return canExec;
}

}
}
