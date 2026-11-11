// Ram.qml
import Quickshell
import Quickshell.Io
import QtQuick
// Ram display with free Modules
Text {
  id: ram
  color: "#FFFFFF"
  font.pixelSize: 14
  font.weight: 400
  Process {
    id: ramProc
    command: ["sh", "-c", "free --giga | awk '/Mem:/ {print $3, $2}'"]
    running: true
    stdout: StdioCollector {
      onStreamFinished: {ram.text = this.text}
    }
  }
  Timer {
    interval: 5000
    running: true
    repeat: true
    onTriggered: ramProc.running = true
  }
}

