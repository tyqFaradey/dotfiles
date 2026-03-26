import QtQuick

Text {
  id: root

  property string font_family: "JetBrainsMono Nerd Font Mono"
  property int font_size: 12
  property int font_weight: 500

  color: "#ffffff"
  
  font.family: root.font_family
  font.weight: root.font_weight;
  font.pointSize: root.font_size

  renderType: Text.NativeRendering
  textFormat: Text.PlainText
}
