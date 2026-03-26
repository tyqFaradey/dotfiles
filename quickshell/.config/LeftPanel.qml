import QtQuick
import Quickshell
import QtQuick.Layouts

PanelWindow {
  id:root

  anchors { top: true; bottom: true; left: true; }
  margins { top: 6; bottom: 6; left: 6; }

  color: "transparent"

  property int padding: 6

  implicitWidth: content.implicitWidth + (padding*2)


  Rectangle {
    anchors.fill: parent

    color: "#000000"
    opacity: 0.67
    radius: 10
  }

  FlexboxLayout {
      id: content
      anchors.fill: parent
      anchors.topMargin: root.padding -1
      anchors.bottomMargin: root.padding*1.5
      direction: FlexboxLayout.Column
      alignItems: FlexboxLayout.AlignCenter
      justifyContent: FlexboxLayout.JustifySpaceBetween

    ColumnLayout {
      id: top
      Layout.alignment: Qt.AlignHCenter
      spacing: root.padding

      Buttery {
        Layout.alignment: Qt.AlignHCenter

      }

      Clock {
        Layout.alignment: Qt.AlignHCenter
      }
    }

    ColumnLayout {
      id: center
      Layout.alignment: Qt.AlignHCenter
      spacing: root.padding

    }

    ColumnLayout {
      id: buttom
      Layout.alignment: Qt.AlignHCenter
      spacing: root.padding

      Button {
        Layout.alignment: Qt.AlignHCenter
      }
    }
  }
}
