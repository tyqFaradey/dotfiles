import QtQuick

Item {
  id: root

  property string text: ""
  property color text_color: "#ffffff"

  property real font_size: 12
  property int font_weight: 500

  property color background_color: "#000000"
  property real background_opacity: 0.3
  property real background_scale: 1

  property int border_radius: 6
  property int padding: 4
  property int paddingV: root.padding
  property int paddingH: root.padding

  Rectangle {
    anchors.fill: parent
    color: root.background_color
    opacity: root.background_opacity
    radius: root.border_radius
    scale: root.background_scale

    Behavior on scale {
      NumberAnimation {
        duration: 200
        easing.type: Easing.InOutQuad
      }
    }
    Behavior on color {
      ColorAnimation {
        duration: 500
        easing.type: Easing.InOutQuad
      }
    }
    Behavior on opacity {
      NumberAnimation {
        duration: 200
        easing.type: Easing.InOutQuad
      }
    }
  }

  implicitWidth: content.implicitWidth + (root.padding*root.paddingH)
  implicitHeight: content.implicitHeight + (root.padding*root.paddingV)

  StyledText {
    id: content
    anchors.centerIn: parent

    text: root.text
    color: root.text_color

    font_size: root.font_size
    font_weight: root.font_weight
  }
}
