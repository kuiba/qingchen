import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1

import QtQuick.Controls.Styles 1.1
ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: {console.log("Open action triggered");
                    fileDialog.open();
                }
            }
            MenuItem
            {
                text: qsTr("改变原点和宽高")
                onTriggered:
                    {
                    dialog.visible=true;

                }

            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }

        }

        }



    FileDialog {
        id: fileDialog
        title: "Please choose a file"
        onAccepted: {
            console.log("fileurl="+fileDialog.fileUrl,",folder="+fileDialog.folder);

             image.x=0;image.y=0;
            image.source=fileDialog.fileUrl;
             image.width=image.sourceSize.width;
            image.height=image.sourceSize.height;

            console.log(image.x,image.y,image.width,image.height);


        }
        onRejected: {
            console.log("Canceled")

        }

    }

    Image {
        id: image
        x: 195
        y: 177
        width: 100
        height: 100
        onSourceChanged:
        {
           console.log("图片image数据:"+image.x,image.y,image.width,image.height);
        }
        onXChanged:
       { console.log("图片image数据:"+image.x,image.y,image.width,image.height)}
        onYChanged:
        { console.log("图片image数据:"+image.x,image.y,image.width,image.height)}
       onSourceSizeChanged:
       {
           console.log("图片image数据"+image.data);
       }
       MouseArea
       { id: mouseArea2;   anchors.fill: parent
           property int i: 0
           onWheel: {
               if (wheel.modifiers & Qt.ControlModifier) {
                   image.rotation += wheel.angleDelta.y / 120 * 1;
                   if (Math.abs(image.rotation) < 1)
                      image.rotation = 0;
                   console.log("图片所旋转角度=",image.rotation);
                   if(image.rotation==360||image.rotation==-360)
                       image.rotation=0;

                            }

       }
       }

    }
    MouseArea
    { id: mouseArea1;   anchors.fill: parent
        property int i: 0
        onClicked:
        {   i++;
            console.log("鼠标数据:"+i,mouseX,mouseY);
        }


    }

    Dialog {
        id:dialog
        visible: false
        title: "Blue sky dialog"
        width:295
        height:132
        standardButtons: StandardButton.Save | StandardButton.Cancel
        onRejected: {
            console.log("离开")
        }
        onAccepted:
            {console.log("接受");
        console.log(t1.value,
                    t2.value,
                    t3.value,
                    t4.value
                    );
            image.x=t1.value;image.y=t2.value;
        }



            RowLayout {
                id: contentRow
                anchors.fill:parent
                anchors.margins: 8
                spacing: 16
                ColumnLayout {

                    Layout.minimumWidth: implicitWidth
                    Layout.fillWidth: false


                    RowLayout {

                        SpinBox {
                            id: t1
                            Layout.fillWidth: true

                            maximumValue: 5000
                            minimumValue: -5000

                        }
                        SpinBox {
                            id: t2
                            Layout.fillWidth: true
                             maximumValue: 5000
                             minimumValue: -5000
                        }
                        SpinBox {
                            id: t3
                            Layout.fillWidth: true

                            maximumValue: 5000
                            minimumValue: -5000

                        }
                        SpinBox {
                            id: t4
                            Layout.fillWidth: true
                             maximumValue: 5000
                             minimumValue: -5000
                        }
                    }
                    TextField {
                        id: t5
                        placeholderText: "This is a placeholder for a TextField"
                        Layout.fillWidth: true
                    }
                    TextField {
                        id: t6
                        placeholderText: "This is a placeholder for a TextField"
                        Layout.fillWidth: true
                    }

                }


            }
        }

    }







