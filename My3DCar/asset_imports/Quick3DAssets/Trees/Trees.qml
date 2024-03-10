import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Model {
            id: tree4
            x: 0
            y: 0
            objectName: "tree4"
            z: 418.687255859375
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 9
            scale.y: 9
            scale.z: 9
            source: "meshes/tree4_mesh.mesh"
            materials: [
                bark_material,
                leaves_material
            ]
        }
        Model {
            id: tree6
            objectName: "tree6"
            z: -125.51510620117188
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 9
            scale.y: 9
            scale.z: 9
            source: "meshes/tree6_mesh.mesh"
            materials: [
                bark_material,
                leaves_material
            ]
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: bark_material
            normalMap: bark03_n
            baseColorMap: bark03
            objectName: "bark"
            baseColor: "#ffcccccc"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: leaves_material
            baseColorMap: _1234
            objectName: "leaves"
            baseColor: "#ffcccccc"
            roughness: 0.5
        }

        Texture {
            id: _1234
            source: "../../../content/images/1234.png"
        }

        Texture {
            id: bark03
            source: "../../../content/images/bark03.png"
        }

        Texture {
            id: bark03_n
            source: "../../../content/images/bark03_n.png"
        }
    }

    // Animations:
}
