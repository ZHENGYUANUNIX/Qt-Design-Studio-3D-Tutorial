

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick3D 6.5
import QtQuick3D.Effects 6.5
import My3DCar
import Quick3DAssets.Rx7_white_comet
import QtQuick.Timeline 1.0
import QtQuick.Controls 6.5

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            lightProbe: backgroundTexture
            backgroundMode: SceneEnvironment.SkyBox
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
            probeOrientation: Qt.vector3d(0, -80, 0)
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
            }

            PerspectiveCamera {
                id: sceneCamera
                x: -186.608
                y: 416.826
                eulerRotation.z: 0
                eulerRotation.y: -150
                eulerRotation.x: -51.5
                z: 3104.48071
            }

            LongRoad {
                id: longRoad
                speed: speedSlider.value
            }

            MyCar {
                id: myCar
                x: 125.925
                y: -0
                rx7_white_cometIsHeadLightOn: headLightSwitch.checked
                speed: speedSlider.value
                eulerRotation.y: -180
                z: 3561.08105
            }
        }
    }

    Item {
        id: __materialLibrary__
        PrincipledMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            baseColor: "#4aee45"
        }
    }

    Slider {
        id: speedSlider
        value: 60
        stepSize: 1
        to: 180
    }

    Text {
        id: vehicleSpeedText
        x: 8
        y: 36
        width: 110
        height: 80
        color: "#fff100"
        text: speedSlider.value
        font.pixelSize: 60
        horizontalAlignment: Text.AlignRight
        font.bold: true
    }

    Text {
        id: vehicleUnitText
        x: 124
        y: 49
        color: "#fff100"
        text: qsTrId("kph")
        font.pixelSize: 50
        font.bold: true
    }

    Timeline {
        id: laneChangeTimeline
        animations: [
            TimelineAnimation {
                id: laneChangeLeftAnimation
                alwaysRunToEnd: false
                running: false
                loops: 1
                duration: 3000
                to: 3000
                from: 0
            },
            TimelineAnimation {
                id: laneChangeRightAnimation
                alwaysRunToEnd: false
                running: false
                loops: 1
                duration: 3000
                to: 6000
                from: 3000
            }
        ]
        startFrame: 0
        endFrame: 6000
        enabled: true

        KeyframeGroup {
            target: myCar
            property: "steerRotation"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 30
                frame: 1011
            }

            Keyframe {
                value: 30
                frame: 2006
            }

            Keyframe {
                value: 0
                frame: 3000
            }

            Keyframe {
                value: -30
                frame: 3995
            }

            Keyframe {
                value: -30
                frame: 5005
            }

            Keyframe {
                value: 0
                frame: 6000
            }
        }

        KeyframeGroup {
            target: myCar
            property: "eulerRotation.y"
            Keyframe {
                value: -180
                frame: 0
            }

            Keyframe {
                value: -180
                frame: 490
            }

            Keyframe {
                value: -170
                frame: 1500
            }

            Keyframe {
                value: -170
                frame: 2006
            }

            Keyframe {
                value: -180
                frame: 3000
            }

            Keyframe {
                value: -180
                frame: 3505
            }

            Keyframe {
                value: -190
                frame: 4500
            }

            Keyframe {
                value: -190
                frame: 5005
            }

            Keyframe {
                value: -180
                frame: 6000
            }
        }

        KeyframeGroup {
            target: myCar
            property: "x"
            Keyframe {
                value: 125.93
                frame: 0
            }

            Keyframe {
                value: 125.925
                frame: 1011
            }

            Keyframe {
                value: -130
                frame: 2495
            }

            Keyframe {
                value: -130
                frame: 3995
            }

            Keyframe {
                value: 126
                frame: 5495
            }
        }
    }

    RadioButton {
        id: leftLaneRadioButton
        x: 3
        y: 140
        text: qsTrId("Left Lane")
        font.pixelSize: 16

        Connections {
            target: leftLaneRadioButton
            onCheckedChanged: if (leftLaneRadioButton.checked) {
                                  laneChangeLeftAnimation.start()
                              }
        }
    }

    RadioButton {
        id: rightLaneRadioButton
        x: 124
        y: 140
        text: qsTrId("Right Lane")
        font.pixelSize: 16
        checked: true

        Connections {
            target: rightLaneRadioButton
            onCheckedChanged: if (rightLaneRadioButton.checked) {
                                  laneChangeRightAnimation.start()
                              }
        }
    }

    Button {
        id: frontViewButton
        x: 13
        y: 210
        text: qsTrId("Front View")
        font.pixelSize: 16
        font.bold: true

        Connections {
            target: frontViewButton
            onClicked: rectangle.state = "Front View"
        }
    }

    Button {
        id: topViewButton
        x: 124
        y: 210
        text: qsTrId("Top View")
        font.pixelSize: 16
        font.bold: true

        Connections {
            target: topViewButton
            onClicked: rectangle.state = "Top View"
        }
    }

    Button {
        id: sideViewButton
        x: 13
        y: 266
        text: qsTrId("Side View")
        font.pixelSize: 16
        font.bold: true

        Connections {
            target: sideViewButton
            onClicked: rectangle.state = "Side View"
        }
    }

    Button {
        id: backViewButton
        x: 124
        y: 266
        text: qsTrId("Back View")
        font.pixelSize: 16
        font.bold: true

        Connections {
            target: backViewButton
            onClicked: rectangle.state = "Back View"
        }
    }

    Switch {
        id: headLightSwitch
        x: 5
        y: 330
        text: qsTrId("Head Light Switch")
        font.pixelSize: 20
        font.bold: false
    }

    Texture {
        id: backgroundTexture
        source: "images/OpenfootageNET_lowerAustria01-1024.hdr"
    }
    states: [
        State {
            name: "Front View"

            PropertyChanges {
                target: sceneCamera
                x: 39.219
                y: 142.009
                z: 3139.24365
                eulerRotation.z: 0
                eulerRotation.y: 178
                eulerRotation.x: -25
            }
        },
        State {
            name: "Top View"

            PropertyChanges {
                target: sceneCamera
                x: 5.421
                y: 802.161
                z: 3618.64868
                eulerRotation.y: 1
                eulerRotation.x: -86.49999
            }
        },
        State {
            name: "Side View"

            PropertyChanges {
                target: sceneCamera
                x: 425
                y: 72.773
                z: 3580.93311
                eulerRotation.z: -0
                eulerRotation.y: 89.00002
                eulerRotation.x: -1
            }
        },
        State {
            name: "Back View"

            PropertyChanges {
                target: sceneCamera
                x: 64.826
                y: 270.279
                z: 4010.11377
                eulerRotation.z: 0
                eulerRotation.y: 8
                eulerRotation.x: -25
            }
        }
    ]
    transitions: [
        Transition {
            id: transition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "eulerRotation.x"
                        easing.bezierCurve: [0.68, -0.55, 0.265, 1.55, 1, 1]
                        duration: 994
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "eulerRotation.y"
                        easing.bezierCurve: [0.68, -0.55, 0.265, 1.55, 1, 1]
                        duration: 994
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "eulerRotation.z"
                        easing.bezierCurve: [0.68, -0.55, 0.265, 1.55, 1, 1]
                        duration: 994
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "x"
                        easing.bezierCurve: [0.68, -0.55, 0.265, 1.55, 1, 1]
                        duration: 991
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "y"
                        easing.bezierCurve: [0.68, -0.55, 0.265, 1.55, 1, 1]
                        duration: 994
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "z"
                        easing.bezierCurve: [0.68, -0.55, 0.265, 1.55, 1, 1]
                        duration: 995
                    }
                }
            }
            to: "*"
            from: "*"
        }
    ]
}

/*##^##
Designer {
    D{i:0}D{i:17;property:"steerRotation";target:"myCar"}D{i:18;property:"steerRotation";target:"myCar"}
D{i:19;property:"steerRotation";target:"myCar"}D{i:20;property:"steerRotation";target:"myCar"}
D{i:21;property:"steerRotation";target:"myCar"}D{i:22;property:"steerRotation";target:"myCar"}
D{i:25;property:"eulerRotation.y";target:"myCar"}D{i:26;property:"eulerRotation.y";target:"myCar"}
D{i:27;property:"eulerRotation.y";target:"myCar"}D{i:28;property:"eulerRotation.y";target:"myCar"}
D{i:29;property:"eulerRotation.y";target:"myCar"}D{i:30;property:"eulerRotation.y";target:"myCar"}
D{i:31;property:"eulerRotation.y";target:"myCar"}D{i:32;property:"eulerRotation.y";target:"myCar"}
D{i:35;property:"x";target:"myCar"}D{i:36;property:"x";target:"myCar"}D{i:37;property:"x";target:"myCar"}
D{i:38;property:"x";target:"myCar"}D{i:62;transitionDuration:2000}
}
##^##*/

