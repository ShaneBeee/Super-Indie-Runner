//
//  ParticleHelper.swift
//  Super Indie Runner
//
//  Created by ShaneBee on 2019-12-06.
//  Copyright © 2019 ShaneBee. All rights reserved.
//

import SpriteKit

class ParticleHelper {
    
    static func addParticleEffect(name: String, particlePositionRage: CGVector, position: CGPoint) -> SKEmitterNode? {
        if let emitter = SKEmitterNode(fileNamed: name) {
            emitter.particlePositionRange = particlePositionRage
            emitter.position = position
            emitter.name = name
            return emitter
        }
        return nil
    }
    
    static func removeParticleEffect(name: String, from node: SKNode) {
        let emitters = node[name]
        for emitter in emitters {
            emitter.removeFromParent()
        }
    }
    
}
