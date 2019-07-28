#include "mastercontroller.h"

namespace cm {
namespace controllers {

MasterController::MasterController(QObject *parent) : QObject(parent)
{
    navigationController = new NavigationController();
}

MasterController::~MasterController()
{

}

NavigationController* MasterController::GetNavigationController()
{
    return navigationController;
}

const QString& MasterController::GetWelcomeMessage() const
{
    return welcomeMessage;
}

}}
