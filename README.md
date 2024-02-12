# QR-Code-Generator-QML

This code is from KDAB's blog post [Incredibly Simple QR Generation in QML](https://www.kdab.com/?p=33514).

It is a QML wrapper for qrcode-svg, which allows for fast and dynamic QR Code generation in the form of SVG data.

Dropping [`qrcode.min.js`](qrcode.min.js) and [`QRGenerator.qml`](QRGenerator.qml) into your project's Qt Resources is enough to use this code.

Here's an example of how you might use it to render dynamically:

```js
import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    id: root

    visible: true

    QRGenerator {
        id: qrObj
        content: txtField.text
        join: true
    }

    TextField {
        id: txtField
        width: parent.width
    }

    Image {
        anchors.top: txtField.bottom
        source: (qrObj.svgString === "") 
                    ? ""
                    : ("data:image/svg+xml;utf8," + qrObj.svgString)
    }
}

```

The code in [`QRGenerator.qml`](QRGenerator.qml) is written in Qt 6 QML, but it can be easily changed to work on Qt 5 by addding version numbers to import statements. For more information, see [this page](https://doc.qt.io/qt-6/qtqml-syntax-imports.html).
