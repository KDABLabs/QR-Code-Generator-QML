import QtQuick 2.15
import QtWebView 1.15

Item {
    required property string text
    // Due to platform limitations, overlapping the WebView with other QML components is not supported.
    // Doing this will have unpredictable results which may differ from platform to platform.
    WebView {
        id: document
        // String is encoded using base64 and transfered through page URL
        url: "qrc:///qr-loader.html?w=" + width + "&t=" + Qt.btoa(text)
        // Keep view dimensions to a minimum
        width: parent.width < parent.height ? parent.width : parent.height
        height: parent.height < parent.width ? parent.height : parent.width
        anchors.centerIn: parent
    }
}
