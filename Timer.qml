pragma Singleton

import Quickshell
import QtQuick

Singleton {
  Timer {
    interval: 1000
    running: true
    repeat: true
    onTriggered: ramProc.running = true
  }
}
