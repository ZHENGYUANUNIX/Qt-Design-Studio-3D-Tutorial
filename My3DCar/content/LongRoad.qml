import QtQuick
import QtQuick3D

Node {
    id: root
    property int speed: 60
    property int drivenDistance: 0

    FrameAnimation {
        running: true
        onTriggered: {
            let step = frameTime * root.speed * 50
            root.drivenDistance += step
            if (root.drivenDistance > 1800) {
                root.drivenDistance = 0
            }
        }
    }

    Node {
        id: __materialLibrary__
    }

    RoadBase {
        id: roadBase
        z: 0 + root.drivenDistance
    }

    RoadBase {
        id: roadBase1
        z: 1800 + root.drivenDistance
    }

    RoadBase {
        id: roadBase2
        z: 1800 * 2 + root.drivenDistance
    }

    RoadBase {
        id: roadBase3
        z: 1800 * 3 + root.drivenDistance
    }

    RoadBase {
        id: roadBase4
        z: 1800 * 4 + root.drivenDistance
    }

}
