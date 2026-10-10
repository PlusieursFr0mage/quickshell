// Ram.qml
import Quickshell
import Quickshell.Io
import QtQuick
// Ram display with free Modules
Text {
    id: ram
	Process {
		id: ramProc
		command: ["sh", "-c", "free -b | awk '/Mem:/ {print $3, $2}'"]
		running: true
		stdout: StdioCollector {
	        onStreamFinished: ram.text = this.text
					}
			}
	Timer {
      interval: 1000
      running: true
      repeat: true
      onTriggered: ramProc.running = true
    }
}
