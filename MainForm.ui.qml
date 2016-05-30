import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Layouts 1.3

Rectangle {
    id: rectangle1
    width: 300
    height: 100

    property alias slider: sliderHorizontal1
    property alias lTempValue: lTempValue
    Slider {
        id: sliderHorizontal1
        x: 217
        y: 197
        stepSize: 100
        minimumValue: 1000
        value: 3300
        maximumValue: 6500
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

        Label {
            id: label1
            anchors.top: sliderHorizontal1
            text: qsTr("Current temperature: ")
            anchors.left: sliderHorizontal1.left
            anchors.leftMargin: 0
            anchors.bottom: sliderHorizontal1.top
            anchors.bottomMargin: 10
        }

        Label {
            id: lTempValue
            anchors.left: label1.right
            anchors.leftMargin: 10
            text: qsTr("Undefined")
            style: Text.Raised
            font.bold: false
            anchors.bottom: label1.bottom
            anchors.bottomMargin: 0
        }

        Label {
            id: label2
            x: 47
            y: 70
            text: qsTr("Press Q to exit anytime!")
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
}
