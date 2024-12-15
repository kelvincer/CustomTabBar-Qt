import QtQuick
import QtQuick.Controls.Universal
import QtQuick.Layouts

Window {
    width: 880
    height: 620
    visible: true
    title: qsTr("Custom TabBar")

    ColumnLayout{
        anchors.fill: parent
        spacing: 10
        anchors.margins: 20

        TabBar {
            id: tabBar
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 250
            background: Rectangle {
                color: "lightgray"
                radius: 10
            }

            TabButton {
                id: noteTab
                text: qsTr("Notes")
                implicitHeight: 30
                contentItem: Text {
                    text: parent.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: parent.checked ? "black" : "white"
                    font.bold: true
                    font.pointSize: 14
                    font.family: "Roboto"
                    padding: 0
                }
                background: Rectangle {
                    color: noteTab.checked ?  "white" : "lightgray"
                    border.color: noteTab.checked ?  "green" : "lightgray"
                    border.width: 2
                    radius: 10
                }
            }

            TabButton {
                id: archiveTab
                text: qsTr("Archive")
                implicitHeight: 30
                contentItem: Text {
                    text: parent.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: parent.checked ? "black" : "white"
                    font.bold: true
                    font.pointSize: 14
                    font.family: "Roboto"
                }
                background: Rectangle {
                    color: archiveTab.checked ? "white" : "lightgray"
                    border.color: archiveTab.checked ? "green" : "lightgray"
                    border.width: 2
                    radius: 10
                }
            }

            TabButton {
                id: deletedTab
                text: qsTr("Deleted")
                implicitHeight: 30
                contentItem: Text {
                    text: parent.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: parent.checked ? "black" : "white"
                    font.bold: true
                    font.pointSize: 14
                    font.family: "Roboto"
                }
                background: Rectangle {
                    color: deletedTab.checked ? "white" : "lightgray"
                    border.color: deletedTab.checked ? "green" : "lightgray"
                    border.width: 2
                    radius: 10
                }
            }
        }

        StackLayout {
            width: parent.width
            currentIndex: tabBar.currentIndex

            Item {
                id: homeTab

                Text {
                    text: qsTr("Notes")
                }
            }
            Item {
                id: discoverTab
                Text {
                    text: qsTr("Archive")
                }
            }
            Item {
                id: trashTab
                Text {
                    text: qsTr("Deleted")
                }
            }
        }
    }
}

