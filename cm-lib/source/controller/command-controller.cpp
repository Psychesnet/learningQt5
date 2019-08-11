#include "command-controller.h"

using namespace cm::framework;
namespace cm {
namespace controllers {

CommandController::CommandController(QObject *parent) :
    QObject (parent)
{
    Command *createClientSaveCommand = new Command(this,
                                                   QChar(0xf0c7),
                                                   "Save");
    QObject::connect(createClientSaveCommand,
                     &Command::executed,
                     this,
                     &CommandController::onCreateClientSaveExecuted);
    clientViewContextCommands.append(createClientSaveCommand);
}

CommandController::~CommandController()
{

}

QQmlListProperty<framework::Command> CommandController::createClientViewContextCommands()
{
    return QQmlListProperty<Command>(this, clientViewContextCommands);
}

void CommandController::onCreateClientSaveExecuted()
{
    qDebug() << "You executed the save action!!";
}

}
}
