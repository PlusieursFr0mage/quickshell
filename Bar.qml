// Bar.qml
import Quickshell
import Quickshell.Io
import QtQuick

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {

        property int fontSize: 14
        property int fontWeight: 550
        property color fontColor: "#FFFFFF"
        
        required property var modelData
        screen: modelData
        color: "#00181B20"
        
        anchors {
            top: true
            left: true
            right: true
        }

        implicitHeight: 32

        Logo {
          x: 8
          anchors.verticalCenter: parent.verticalCenter
        }

        ClockWidget {
          font.pixelSize: fontSize
          font.weight: fontWeight
          color: fontColor

          x: 33
          anchors.verticalCenter: parent.verticalCenter
        }
        RamWidget {
          font.pixelSize: fontSize
          font.weight: fontWeight
          color: fontColor

          x: 78
          anchors.verticalCenter: parent.verticalCenter
        }
    }
  }
 }
