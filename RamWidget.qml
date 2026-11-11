// Ram.qml
import Quickshell
import Quickshell.Io
import QtQuick
// Ram display with free Modules
Text {
  
  property int memUsage: 0
  id: ram
  text: memUsage + " %"
  
  Process {
    id: ramProc
    command: ["sh", "-c", "free | grep Mem"]
    stdout: SplitParser {
        onRead: data => {
          if (data) {
            let parts = data.trim().split(/\s+/)
            let total = parseInt(parts[1]) || 1
            let used = parseInt(parts[2]) || 0
            return memUsage = Math.round(100 * used / total)
          }
        }
      } 
      Component.onCompleted: running = true
  }

  Timer {
    interval: 2000
    running: true
    repeat: true
    onTriggered: ramProc.running = true
  }
}

