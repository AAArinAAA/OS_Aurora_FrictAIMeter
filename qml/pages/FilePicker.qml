import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Pickers 1.0



FilePickerPage {
    id: filePicker
    title: "Select a File"
    nameFilters: ["*.jpg", "*.png", "*.jpeg"]
    showSystemFiles: true

    onSelectedContentPropertiesChanged: {
        console.log("Selected:", selectedContentProperties.fileName)
    }
}
