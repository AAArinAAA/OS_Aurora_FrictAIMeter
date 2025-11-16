import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Pickers 1.0
import QtMultimedia 5.6


Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Main")
        extraContent.children: [
            IconButton {
                objectName: "aboutButton"
                icon.source: "image://theme/icon-m-about"
                anchors.verticalCenter: parent.verticalCenter

                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        ]
    }

    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 20

        Image
        {
            objectName: "ImageViewer"
            anchors.horizontalCenter: parent.horizontalCenter
            width: 500
            height: 500
            source: "image://theme/icon-m-about"
        }

        Button
        {
            id: chooseFile
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose"
            onClicked: pageStack.push(imagePickerComponent)
        }

        Button
        {
            id: cameraButton
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Camera"
            onClicked: PageStack.push(imageCamera)
        }

        Button
        {
            id: calculateButton
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Predict"
        }

        Label
        {
            objectName: "textLabel"
            id: resultLabel
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Result: "
        }
    }
}
