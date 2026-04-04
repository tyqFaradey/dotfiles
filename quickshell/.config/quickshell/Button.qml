import QtQuick


StyledItem {
  text: "󰍳"

  font_size: 26
  font_weight: 900

  background_color: "#80ba1b"
  background_opacity: 0.9

  paddingH: 2
  paddingV: -4

  MouseArea {
    anchors.fill: parent
    onClicked: {
      console.log("Custom button was clicked!")
    }
  }

  background_scale: butteryHoverHandler.hovered ? 1.08 : 1.0
  HoverHandler {
    id: butteryHoverHandler
  }

}
