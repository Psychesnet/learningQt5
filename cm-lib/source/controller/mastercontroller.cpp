#include "mastercontroller.h"

namespace cm {
namespace controllers {

class MasterController::Implementation
{
public:
    Implementation(MasterController *m) : masterController(m)
    {
        navigationController = new NavigationController(masterController);
        commandController = new CommandController();
    }
    MasterController *masterController{nullptr};
    NavigationController *navigationController{nullptr};
    CommandController *commandController{nullptr};
    QString welcomeMessage = "This is MasterController to Major Tom";
};

MasterController::MasterController(QObject *parent) : QObject(parent)
{
    implementation.reset(new Implementation(this));
}

MasterController::~MasterController()
{

}

NavigationController* MasterController::navigationController()
{
    return implementation->navigationController;
}

const QString& MasterController::welcomeMessage() const
{
    return implementation->welcomeMessage;
}

CommandController* MasterController::commandController()
{
    return implementation->commandController;
}

}}
