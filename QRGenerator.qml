import QtQuick

import "qrcode.min.js" as QrSvg

QtObject {
    id: root

    required property string content
    property int padding: 4
    property int width: 256
    property int height: 256
    property string color: "black"
    property string background: "white"
    property string ecl: "M"
    property bool join: false
    property bool predefined: false
    property bool pretty: true
    property bool swap: false
    property bool xmlDeclaration: true
    property string container: "svg"

    property string svgString: ""

    function createSvgString() {
        root.svgString = new QrSvg.QRCode({
            content: root.content,
            padding: root.padding,
            width: root.width,
            height: root.height,
            color: root.color,
            background: root.background,
            ecl: root.ecl,
            join: root.join,
            predefined: root.predefined,
            pretty: root.pretty,
            swap: root.swap,
            xmlDeclaration: root.xmlDeclaration,
            container: root.container
        }).svg()
    }

    onContentChanged: createSvgString()
    Component.onCompleted: createSvgString()
}
