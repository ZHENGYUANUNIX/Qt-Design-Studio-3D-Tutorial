import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    Texture {
        id: jezdnia_Kraweznik_DIFFUSE_jpg_texture
        objectName: "Jezdnia_Kraweznik_DIFFUSE.jpg"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/Jezdnia_Kraweznik_DIFFUSE.jpg
        // Skipped property: source, reason: Failed to find texture at c:/Qt/Demos/Automotive/My3DCar/hirai/my3dcar/assets/3d/road/Jezdnia_Kraweznik_DIFFUSE.jpg
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Model {
            id: plane01
            objectName: "Plane01"
            x: 0.29874187707901
            z: -0.07404136657714844
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            source: "meshes/plane01_mesh.mesh"
            materials: [
                jezdnia_Kraweznik_MAT_material
            ]
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: jezdnia_Kraweznik_MAT_material
            normalMap: roadStr01_Normal
            objectName: "Jezdnia_Kraweznik_MAT"
            baseColor: "#ff969696"
            baseColorMap: jezdnia_Kraweznik_DIFFUSE
            roughness: 0.8585786819458008
        }

        Texture {
            id: jezdnia_Kraweznik_DIFFUSE
            source: "../../../content/images/Jezdnia_Kraweznik_DIFFUSE.jpg"
        }

        Texture {
            id: roadStr01_Normal
            source: "../../../content/images/RoadStr01_Normal.png"
        }
    }

    // Animations:
}
