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
        color: "#00181B20"
        anchors {
            top: true
            left: true
            right: true
        }

        implicitHeight: 32

        ClockWidget {
          anchors {
            verticalCenter: parent.verticalCenter
          }
        }
        RamWidget {
          x: 75
          anchors.verticalCenter: parent.verticalCenter
        }
    }
  }
 }
