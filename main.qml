import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: document
    QRCode {
        id: qr
        text: "www.kdab.com/?p=33514"
        anchors.centerIn: parent
        // The smallest dimension determines and fixes QR code size
        width: 400
        height: 600
    }
    width: 640
    height: 480
    visible: true
    title: qsTr("Web based embedded QR Code")
}
