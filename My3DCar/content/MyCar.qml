import QtQuick
import QtQuick3D
import Quick3DAssets.Rx7_white_comet
import QtQuick3D.Particles3D 6.5

Node {
    id: root
    property int speed: 60
    property real wheelRotation: 0
    property real steerRotation: 0
    property alias rx7_white_cometIsHeadLightOn: rx7_white_comet.isHeadLightOn

    FrameAnimation {
        running: true
        onTriggered: {
            let step = frameTime * root.speed * 10
            root.wheelRotation += step
            if (root.wheelRotation > 360) {
                root.wheelRotation = 0
            }
        }
    }

    Node {
        id: __materialLibrary__
    }

    Rx7_white_comet {
        id: rx7_white_comet
        rsteerEulerRotationy: root.steerRotation
        lsteerEulerRotationy: root.steerRotation
        wheel_RREulerRotationx: root.wheelRotation
        wheel_RLEulerRotationx: root.wheelRotation
        wheel_FREulerRotationx: root.wheelRotation
        wheel_FL_001EulerRotationx: root.wheelRotation
    }

    DirectionalLight {
        id: directionalLight
        x: -0
        y: 251.649
        eulerRotation.z: 0.00001
        eulerRotation.y: -0
        eulerRotation.x: -25.37802
        z: 429.94339
    }

    ParticleSystem3D {
        id: exhaust
        x: -53.117
        y: 27.986
        eulerRotation.z: 0.00002
        eulerRotation.y: 93.28948
        eulerRotation.x: -0.00002
        z: -216.52136
        ParticleEmitter3D {
            id: exhaustEmitter
            emitRate: root.speed
            velocity: exhaustDirection
            particleScaleVariation: 3
            particleScale: 8
            particle: exhaustParticle
            lifeSpanVariation: 100
            lifeSpan: 300
            depthBias: -20
            SpriteParticle3D {
                id: exhaustParticle
                color: "#fdfeff"
                spriteSequence: exhaustSequence
                sprite: exhaustTexture
                sortMode: Particle3D.SortNewest
                particleScale: 12
                maxAmount: 100
                fadeOutDuration: 150
                fadeInEffect: Particle3D.FadeScale
                fadeInDuration: 150
                Texture {
                    id: exhaustTexture
                    source: "smoke2.png"
                }

                SpriteSequence3D {
                    id: exhaustSequence
                    frameCount: 15
                    duration: 2000
                }

                Wander3D {
                    id: exhaustWander
                    uniquePaceVariation: 0.3
                    uniquePace.z: 0.25
                    uniquePace.y: 0.3
                    uniquePace.x: 0.1
                    uniqueAmountVariation: 0.3
                    uniqueAmount.z: 50
                    uniqueAmount.y: 60
                    uniqueAmount.x: 30
                    system: exhaust
                    particles: exhaustParticle
                    globalPace.y: 0.3
                    globalAmount.y: 50
                    fadeInDuration: 500
                }

                VectorDirection3D {
                    id: exhaustDirection
                    directionVariation.z: 20
                    directionVariation.y: 10
                    directionVariation.x: 5
                    direction.y: 0
                    direction.x: 750
                }
                blendMode: SpriteParticle3D.SourceOver
                billboard: true
            }
        }
    }

}
