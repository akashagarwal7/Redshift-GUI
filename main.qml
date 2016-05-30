import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 300
    height: 100
    title: qsTr("Redshift Screen Temperature")

    MainForm {
        property real temp: 3200
        anchors.fill: parent
        Keys.onReleased: {
            if(event.key === 81)
            Qt.quit();
            if(event.key === 16777234 && temp>1000){
                slider.value -= 100;
                temp -= 100;
            }
            else if(event.key === 16777236 && temp<6500){
                slider.value += 100;
                temp += 100;
            }
            sValue.setValue(temp);
            lTempValue.text = temp;

        }
        focus: true
        slider.onValueChanged: {
//            console.log("Value of slider: " + slider.value);
            temp = slider.value;
            sValue.setValue(temp);
            lTempValue.text = temp;
        }
    }
}
