// Bar.qml
import Quickshell
import Quickshell.Io
import QtQuick

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {

        required property var modelData
        screen: modelData
        color: "#181B20"

        anchors {
            top: true
            right: true
            bottom: true
        }

        implicitWidth: 40
    }
  }
}
