import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node
    property alias wheel_RREulerRotationx: wheel_RR.eulerRotation.x
    property alias wheel_RLEulerRotationx: wheel_RL.eulerRotation.x
    property alias wheel_FL_001EulerRotationx: wheel_FL_001.eulerRotation.x
    property alias wheel_FREulerRotationx: wheel_FR.eulerRotation.x
    property alias lsteerEulerRotationy: lsteer.eulerRotation.y
    property alias rsteerEulerRotationy: rsteer.eulerRotation.y
    property bool isHeadLightOn: false

    // Resources
    Texture {
        id: mazda_rx_7_fc3s_akagis_white_comet_source_whitecomet_plate_png_texture
        objectName: "mazda-rx-7-fc3s-akagis-white-comet\source\whitecomet_plate.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/whitecomet_plate.png
        // Skipped property: source, reason: Failed to find texture at c:/Qt/Demos/Automotive/My3DCar/hirai/my3dcar/assets/3d/car/mazda-rx-7-fc3s-akagis-white-comet/source/whitecomet_plate.png
    }
    Texture {
        id: mazda_rx_7_fc3s_akagis_white_comet_source_frontlights_texture_jpeg_texture
        objectName: "mazda-rx-7-fc3s-akagis-white-comet\source\frontlights_texture.jpeg"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/frontlights_texture.jpeg
        // Skipped property: source, reason: Failed to find texture at c:/Qt/Demos/Automotive/My3DCar/hirai/my3dcar/assets/3d/car/mazda-rx-7-fc3s-akagis-white-comet/source/frontlights_texture.jpeg
    }
    Texture {
        id: mazda_rx_7_fc3s_akagis_white_comet_source_lights_texture_png_texture
        objectName: "mazda-rx-7-fc3s-akagis-white-comet\source\lights_texture.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/lights_texture.png
        // Skipped property: source, reason: Failed to find texture at c:/Qt/Demos/Automotive/My3DCar/hirai/my3dcar/assets/3d/car/mazda-rx-7-fc3s-akagis-white-comet/source/lights_texture.png
    }
    Texture {
        id: mazda_rx_7_fc3s_akagis_white_comet_source_e785177dc757b7913e757d5604024c80_cb4db5efcf0c50f3437e35d2cdc6d641_png_texture
        objectName: "mazda-rx-7-fc3s-akagis-white-comet\source\e785177dc757b7913e757d5604024c80_cb4db5efcf0c50f3437e35d2cdc6d641.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/e785177dc757b7913e757d5604024c80_cb4db5efcf0c50f3437e35d2cdc6d641.png
        // Skipped property: source, reason: Failed to find texture at c:/Qt/Demos/Automotive/My3DCar/hirai/my3dcar/assets/3d/car/mazda-rx-7-fc3s-akagis-white-comet/source/e785177dc757b7913e757d5604024c80_cb4db5efcf0c50f3437e35d2cdc6d641.png
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Model {
            id: light
            objectName: "light"
            x: 1.7126314802838757e-15
            y: 76.565185546875
            z: 182.70448303222656
            rotation: Qt.quaternion(-0.386461, 0.922306, 0, 0)
            scale.x: 89.1679
            scale.y: 215.923
            scale.z: 78.1718
            source: "meshes/light_mesh.mesh"
            materials: [
                body_material,
                body_plastic_material,
                light_glass_material,
                body_glass_material,
                light_chrome_material,
                light_material
            ]
        }
        Model {
            id: kit
            objectName: "kit"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/__________005_mesh.mesh"
            materials: [
                kit_paint_material
            ]
        }
        Model {
            id: mirror
            objectName: "mirror"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/mirror_mesh.mesh"
            materials: [
                mirror_paint_material,
                mirror_plastic_material,
                mirror_material
            ]
        }
        Model {
            id: spoiler
            objectName: "spoiler"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/__________002_mesh.mesh"
            materials: [
                spoiler_paint_material
            ]
        }
        Model {
            id: exhaust
            objectName: "exhaust"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/exhaust_mesh.mesh"
            materials: [
                exhaust_chrome_material,
                exhaust_focus_material
            ]
        }
        Model {
            id: number_plate
            objectName: "number plate"
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/number_plate_mesh.mesh"
            materials: [
                numberplate_material,
                plastic_material
            ]
        }
        Model {
            id: body
            objectName: "body"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/body_mesh.mesh"
            materials: [
                body_material,
                focus_material,
                bumper_light_material,
                body_glass_material,
                body_plastic_material,
                signal_light_material,
                body_farme_glass_material,
                chrome_material
            ]
        }
        Model {
            id: panel_back_light
            objectName: "panel back light"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/panel_back_light_mesh.mesh"
            materials: [
                back_light_plastic_material,
                back_light_signal_glass_material,
                back_light_glass_material,
                back_light_glass_goback_material,
                back_light_chrome_material,
                back_light__material,
                back_light_signal_material,
                back_light_goback_material,
                otr_material
            ]
        }
        Model {
            id: wiper_s
            objectName: "wiper's"
            rotation: Qt.quaternion(-1.37679e-07, -1.37679e-07, 0.707107, -0.707107)
            scale.x: -100
            scale.y: -100
            scale.z: -100
            source: "meshes/wiper_s_mesh.mesh"
            materials: [
                wiper_plastic_material,
                wiper_rubber_material
            ]
        }
        Model {
            id: list_
            objectName: "list_"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/list__mesh.mesh"
            materials: [
                list_material,
                texture_material
            ]
        }
        Model {
            id: text_RedSuns
            objectName: "text RedSuns"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/______mesh.mesh"
            materials: [
                text_color_material
            ]
        }
        Model {
            id: brake_disk_RR
            objectName: "brake.disk.RR"
            x: -75.71009063720703
            y: 31.482500076293945
            z: -124.24999237060547
            rotation: Qt.quaternion(1.17232e-07, -2.2519e-07, -0.383943, 0.923357)
            scale.x: 179.67
            scale.y: 179.67
            scale.z: 179.67
            source: "meshes/brake_disk_RR_mesh.mesh"
            materials: [
                material_042_material,
                material_043_material
            ]
        }
        Model {
            id: wheel_RR
            objectName: "wheel.RR"
            x: -75.71009063720703
            y: 31.48252296447754
            z: -124.26200103759766
            scale.x: 157.158
            scale.y: 157.158
            scale.z: 157.158
            source: "meshes/wheel_RR_mesh.mesh"
            eulerRotation.z: 0
            eulerRotation.y: 0
            eulerRotation.x: 0
            materials: [
                tire_001_material,
                bl_001_material,
                chrome_001_material
            ]
        }
        Model {
            id: wheel_RL
            objectName: "wheel.RL"
            x: 75.71009826660156
            y: 31.48252296447754
            z: -124.26200103759766
            scale.x: 157.158
            scale.y: 157.158
            scale.z: 157.158
            source: "meshes/wheel_RL_mesh.mesh"
            materials: [
                tire_003_material,
                bl_003_material,
                chrome_003_material
            ]
        }
        Model {
            id: brake_disk_RL_
            objectName: "brake.disk.RL."
            x: 75.71009826660156
            y: 31.482500076293945
            z: -124.24999237060547
            rotation: Qt.quaternion(0.975697, -0.219123, 2.84448e-08, -4.53477e-08)
            scale.x: 179.67
            scale.y: 179.67
            scale.z: 179.67
            source: "meshes/brake_disk_RL__mesh.mesh"
            materials: [
                material_011_material,
                material_012_material
            ]
        }
        Node {
            id: lsteer
            objectName: "LSteer"
            x: 70.21009826660156
            y: 31.482500076293945
            eulerRotation.z: 0
            eulerRotation.y: 0
            eulerRotation.x: -90
            z: 121.15800476074219
            scale.x: 100
            scale.y: 100
            scale.z: 100
            Model {
                id: brake_disk_FL
                objectName: "brake.disk.FL"
                x: 0.05500000715255737
                rotation: Qt.quaternion(0.844865, 0.534979, 5.21791e-08, -1.19522e-08)
                scale.x: 1.7967
                scale.y: 1.7967
                scale.z: 1.7967
                source: "meshes/brake_disk_FL_mesh.mesh"
                materials: [
                    material_004_material,
                    material_003_material
                ]
                Model {
                    id: wheel_FL_001
                    objectName: "wheel.FL.001"
                    rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                    scale.x: 0.874791
                    scale.y: 0.874791
                    scale.z: 0.874791
                    source: "meshes/wheel_FL_001_mesh.mesh"
                    materials: [
                        tire_004_material,
                        bl_004_material,
                        chrome_005_material
                    ]
                }
            }
        }
        Node {
            id: rsteer
            objectName: "RSteer"
            x: -70.21009826660156
            y: 31.482500076293945
            z: 121.15800476074219
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            Model {
                id: brake_disk_FR
                objectName: "brake.disk.FR"
                x: -0.05500000715255737
                rotation: Qt.quaternion(-2.42129e-07, 7.63376e-08, 0.9244, -0.381425)
                scale.x: 1.7967
                scale.y: 1.7967
                scale.z: 1.7967
                source: "meshes/brake_disk_FR_mesh.mesh"
                materials: [
                    material_009_material,
                    material_010_material
                ]
                Model {
                    id: wheel_FR
                    objectName: "wheel.FR"
                    rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                    scale.x: 0.874791
                    scale.y: 0.874791
                    scale.z: 0.874791
                    source: "meshes/wheel_FR_mesh.mesh"
                    materials: [
                        tire_material,
                        bl_material,
                        chrome_004_material
                    ]
                }
            }
        }
        Node {
            id: lsteer_001
            objectName: "LSteer.001"
            x: 70.19339752197266
            y: 31.482500076293945
            z: 121.15800476074219
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
        }
        Model {
            id: text_Lexyc16_and_Veisun
            objectName: "text Lexyc16 and Veisun"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/______002_mesh.mesh"
            materials: [
                text_L_and_V_material
            ]
        }

        SpotLight {
            id: leftHeadLight
            x: 49.97
            y: 65.232
            brightness: 0
            eulerRotation.z: 180
            eulerRotation.y: -179.99997
            eulerRotation.x: -11.00648
            z: 183.72282
        }

        SpotLight {
            id: rightHeadLight
            x: -55.739
            y: 66.881
            brightness: 0
            eulerRotation.z: 180
            eulerRotation.y: -179.99997
            eulerRotation.x: -8.69452
            z: 189.12206
        }
    }

    // Animations:
    Timeline {
        id: light_Cube_002Action_timeline
        objectName: "light_Cube_002Action_timeline"
        property real framesPerSecond: 24
        startFrame: 0
        endFrame: 9834
        enabled: true
        animations: [
TimelineAnimation {
            id: openHeadLightAnimation
            loops: 1
            duration: 1300
            from: 0
            to: 1300
            running: false
            },
            TimelineAnimation {
                id: closeHeadLightAnimation
            running: false
            loops: 1
            duration: 1300
            to: 8000
            from: 6700
            }
        ]
        KeyframeGroup {
            target: light
            property: "position"
            keyframeSource: "animations/light_position_0.qad"
        }
        KeyframeGroup {
            target: light
            property: "rotation"
            keyframeSource: "animations/light_rotation_0.qad"
        }

        KeyframeGroup {
            target: leftHeadLight
            property: "brightness"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 0
                frame: 993
            }

            Keyframe {
                value: 50
                frame: 1297
            }

            Keyframe {
                value: 50
                frame: 6706
            }

            Keyframe {
                value: 0
                frame: 7009
            }
        }

        KeyframeGroup {
            target: rightHeadLight
            property: "brightness"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 0
                frame: 1000
            }

            Keyframe {
                value: 50
                frame: 1297
            }

            Keyframe {
                value: 50
                frame: 6700
            }

            Keyframe {
                value: 0
                frame: 7009
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: light_glass_material
            objectName: "light glass"
            baseColor: "#ffcccccc"
            baseColorMap: mazda_rx_7_fc3s_akagis_white_comet_source_frontlights_texture_jpeg_texture
        }

        PrincipledMaterial {
            id: body_glass_material
            objectName: "body glass"
            baseColor: "#ff212121"
            roughness: 0.10256415605545044
        }

        PrincipledMaterial {
            id: light_chrome_material
            objectName: "light chrome"
            baseColor: "#ffcccccc"
            roughness: 0.19999998807907104
        }

        PrincipledMaterial {
            id: light_material
            objectName: "light"
            baseColor: "#ffcccccc"
            roughness: 0.3999999761581421
        }

        PrincipledMaterial {
            id: kit_paint_material
            objectName: "kit paint"
            baseColor: "#ff686868"
            roughness: 0.10000002384185791
        }

        PrincipledMaterial {
            id: body_material
            objectName: "body"
            baseColor: "#ff686868"
            roughness: 0.10000002384185791
        }

        PrincipledMaterial {
            id: mirror_plastic_material
            objectName: "mirror plastic"
            baseColor: "#ff040404"
            roughness: 0.6000000238418579
        }

        PrincipledMaterial {
            id: mirror_material
            objectName: "mirror"
            baseColor: "#ffcccccc"
        }

        PrincipledMaterial {
            id: spoiler_paint_material
            objectName: "spoiler paint"
            baseColor: "#ff686868"
            roughness: 0.10000002384185791
        }

        PrincipledMaterial {
            id: exhaust_chrome_material
            objectName: "exhaust chrome"
            baseColor: "#ffcccccc"
            roughness: 0.3999999761581421
        }

        PrincipledMaterial {
            id: exhaust_focus_material
            objectName: "exhaust focus"
            baseColor: "#ff000000"
            roughness: 1
        }

        PrincipledMaterial {
            id: numberplate_material
            objectName: "numberplate"
            baseColor: "#ffcccccc"
            baseColorMap: mazda_rx_7_fc3s_akagis_white_comet_source_whitecomet_plate_png_texture
            roughness: 0.3999999761581421
        }

        PrincipledMaterial {
            id: mirror_paint_material
            objectName: "mirror paint"
            baseColor: "#ff686868"
        }

        PrincipledMaterial {
            id: plastic_material
            objectName: "plastic"
            baseColor: "#ff040404"
            roughness: 0.6000000238418579
        }

        PrincipledMaterial {
            id: focus_material
            objectName: "focus"
            baseColor: "#ff000000"
            roughness: 1
        }

        PrincipledMaterial {
            id: bumper_light_material
            objectName: "bumper light"
            baseColor: "#ffcccccc"
            baseColorMap: mazda_rx_7_fc3s_akagis_white_comet_source_frontlights_texture_jpeg_texture
            roughness: 0.10000002384185791
        }

        PrincipledMaterial {
            id: signal_light_material
            objectName: "signal light"
            baseColor: "#ffcccccc"
            baseColorMap: mazda_rx_7_fc3s_akagis_white_comet_source_lights_texture_png_texture
            roughness: 0.10000002384185791
        }

        PrincipledMaterial {
            id: body_farme_glass_material
            objectName: "body farme glass"
            baseColor: "#ff000000"
        }

        PrincipledMaterial {
            id: chrome_material
            objectName: "chrome"
            baseColor: "#ff4a4a4a"
            roughness: 0.17829453945159912
        }

        PrincipledMaterial {
            id: back_light_plastic_material
            objectName: "back light plastic"
            baseColor: "#ff0a0a0a"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: back_light_signal_glass_material
            objectName: "back light signal glass"
            baseColor: "#ffff2c00"
        }

        PrincipledMaterial {
            id: back_light_glass_material
            objectName: "back light glass"
            baseColor: "#ffcc0100"
        }

        PrincipledMaterial {
            id: back_light_glass_goback_material
            objectName: "back light glass goback"
            baseColor: "#ffcccccc"
        }

        PrincipledMaterial {
            id: back_light_chrome_material
            objectName: "back light chrome"
            baseColor: "#ffcccccc"
            roughness: 0.19999998807907104
        }

        PrincipledMaterial {
            id: back_light__material
            objectName: "back light "
            baseColor: "#ffcccccc"
            roughness: 0.3999999761581421
        }

        PrincipledMaterial {
            id: back_light_signal_material
            objectName: "back light signal"
            baseColor: "#ffff1b00"
        }

        PrincipledMaterial {
            id: back_light_goback_material
            objectName: "back light goback"
            baseColor: "#ffcccccc"
        }

        PrincipledMaterial {
            id: otr_material
            objectName: "otr"
            baseColor: "#ffcccccc"
            baseColorMap: mazda_rx_7_fc3s_akagis_white_comet_source_lights_texture_png_texture
            roughness: 0.10000002384185791
        }

        PrincipledMaterial {
            id: wiper_plastic_material
            objectName: "wiper.plastic"
            baseColor: "#ff040404"
            roughness: 0.6000000238418579
        }

        PrincipledMaterial {
            id: wiper_rubber_material
            objectName: "wiper.rubber"
            baseColor: "#ff000000"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: list_material
            objectName: "list"
            baseColor: "#ff070d12"
            roughness: 0.30000001192092896
        }

        PrincipledMaterial {
            id: texture_material
            objectName: "texture"
            baseColor: "#ffcccccc"
            baseColorMap: mazda_rx_7_fc3s_akagis_white_comet_source_e785177dc757b7913e757d5604024c80_cb4db5efcf0c50f3437e35d2cdc6d641_png_texture
            roughness: 0.30000001192092896
        }

        PrincipledMaterial {
            id: body_plastic_material
            objectName: "body plastic"
            baseColor: "#ff0a0a0a"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: text_color_material
            objectName: "text color"
            baseColor: "#ff670300"
            roughness: 0.10000002384185791
        }

        PrincipledMaterial {
            id: material_042_material
            objectName: "Material.042"
            baseColor: "#ff910300"
            roughness: 0.19999998807907104
        }

        PrincipledMaterial {
            id: material_043_material
            objectName: "Material.043"
            baseColor: "#ff555555"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: tire_001_material
            objectName: "tire.001"
            baseColor: "#ff000000"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: bl_001_material
            objectName: "bl.001"
            baseColor: "#ff000000"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: chrome_001_material
            objectName: "chrome.001"
            baseColor: "#ff7f7f7f"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: tire_003_material
            objectName: "tire.003"
            baseColor: "#ff000000"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: bl_003_material
            objectName: "bl.003"
            baseColor: "#ff000000"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: chrome_003_material
            objectName: "chrome.003"
            baseColor: "#ff7f7f7f"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: material_011_material
            objectName: "Material.011"
            baseColor: "#ff910300"
            roughness: 0.19999998807907104
        }

        PrincipledMaterial {
            id: material_012_material
            objectName: "Material.012"
            baseColor: "#ff555555"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: material_004_material
            objectName: "Material.004"
            baseColor: "#ff910300"
            roughness: 0.19999998807907104
        }

        PrincipledMaterial {
            id: material_003_material
            objectName: "Material.003"
            baseColor: "#ff555555"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: tire_004_material
            objectName: "tire.004"
            baseColor: "#ff000000"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: bl_004_material
            objectName: "bl.004"
            baseColor: "#ff000000"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: chrome_005_material
            objectName: "chrome.005"
            baseColor: "#ff7f7f7f"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: material_009_material
            objectName: "Material.009"
            baseColor: "#ff910300"
            roughness: 0.19999998807907104
        }

        PrincipledMaterial {
            id: material_010_material
            objectName: "Material.010"
            baseColor: "#ff555555"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: tire_material
            objectName: "tire"
            baseColor: "#ff000000"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: bl_material
            objectName: "bl"
            baseColor: "#ff000000"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: chrome_004_material
            objectName: "chrome.004"
            baseColor: "#ff7f7f7f"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: material_013_material
            objectName: "Material.013"
            baseColor: "#ff910300"
            roughness: 0.19999998807907104
        }

        PrincipledMaterial {
            id: material_014_material
            objectName: "Material.014"
            baseColor: "#ff555555"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: tire_005_material
            objectName: "tire.005"
            baseColor: "#ff000000"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: bl_005_material
            objectName: "bl.005"
            baseColor: "#ff000000"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: chrome_006_material
            objectName: "chrome.006"
            baseColor: "#ff7f7f7f"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: text_L_and_V_material
            transmissionFactor: 0
            specularAmount: 1
            objectName: "text L and V"
            baseColor: "#ff000000"
            roughness: 0.10000002384185791
        }
    }

    Connections {
        target: node
        onIsHeadLightOnChanged: if (node.isHeadLightOn) {
                                    openHeadLightAnimation.start()
                                } else {
                                    closeHeadLightAnimation.start()
                                }
    }
}


