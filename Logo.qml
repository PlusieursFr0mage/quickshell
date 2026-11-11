import QtQuick

Image {
  source: "fedora.svg"                  // chemin relatif au fichier .qml
  width: 16
  height: 16
  fillMode: Image.PreserveAspectFit   // garde les proportions
  sourceSize: Qt.size(width, height)  // rendu net pour les SVG
}
