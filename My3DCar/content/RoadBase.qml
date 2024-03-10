import QtQuick
import QtQuick3D
import Quick3DAssets.Road
import Quick3DAssets.Trees

Node {
    Node {
        id: __materialLibrary__
    }

    Road {
        id: road
        scale.z: 15
        scale.y: 15
        scale.x: 15
    }

    Trees {
        id: trees
        x: -556.649
        y: 0
        z: -697.41943
    }

    DirectionalLight {
        id: directionalLight
        x: -0
        y: 1165.526
        eulerRotation.z: 0.00002
        eulerRotation.y: -0.00001
        eulerRotation.x: -45.57766
        z: 634.85992
    }

    Trees {
        id: trees1
        x: -561.256
        y: -0
        z: 352.88159
    }

}
