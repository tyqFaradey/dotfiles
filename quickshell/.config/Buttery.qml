import QtQuick
import Quickshell.Services.UPower

StyledItem {
  text: UPower.displayDevice.percentage * 100

  implicitWidth: 34

  font_size: 10
  font_weight: 900

  background_color: {
    const percentage = UPower.displayDevice.percentage;
    const state = UPower.displayDevice.state;

    if (state === 4) { return "#96a8aa" }
    else if (percentage <= 0.15) { return "#f2303d" }
    else if (percentage <= 0.30) { return "#f28430" }
    else { return "#80ba1b" }
  }
  background_opacity: 0.9

  paddingH: 0
  paddingV: 0

  background_scale: butteryHoverHandler.hovered ? 1.08 : 1.0
  HoverHandler {
    id: butteryHoverHandler
  }
}
