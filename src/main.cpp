#include <auroraapp.h>
#include <QtQuick>
#include <iostream>
#include <filesystem>
namespace fs = std::filesystem;

int main(int argc, char *argv[])
{
    QScopedPointer<QGuiApplication> application(Aurora::Application::application(argc, argv));
    application->setOrganizationName(QStringLiteral("ru.template"));
    application->setApplicationName(QStringLiteral("TeamSpirit3"));

    QScopedPointer<QQuickView> view(Aurora::Application::createView());
    view->setSource(Aurora::Application::pathTo(QStringLiteral("qml/untitled.qml")));
    view->show();

    std::string imagesPath = "/usr/share/ru.template.untitled/images/";

    auto* root = view->rootObject();

    auto* label = root->findChild<QObject *>("textLabel");
    label->setProperty("text", QString::fromStdString("This is not an Apple"));

    return application->exec();
}
