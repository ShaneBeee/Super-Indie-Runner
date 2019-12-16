//
//  Player.swift
//  Super Indie Runner
//
//  Created by ShaneBee on 2019-12-04.
//  Copyright © 2019 ShaneBee. All rights reserved.
//

import SpriteKit

enum PlayerState {
    case IDLE, RUNNING
}

class Player: SKSpriteNode {
    
    var runFrames = [SKTexture]()
    var idleFrames = [SKTexture]()
    var jumpFrames = [SKTexture]()
    var dieFrames = [SKTexture]()
    
    var state = PlayerState.IDLE {
        willSet {
            animate(for: newValue)
        }
    }
    
    var airborne = false
    
    func loadTextures() {
        idleFrames = AnimationHelper.loadTextures(from: SKTextureAtlas(named:GameConstants.StringConstants.playerIdleAtlas), withName: GameConstants.StringConstants.idlePrefixKey)
        jumpFrames = AnimationHelper.loadTextures(from: SKTextureAtlas(named: GameConstants.StringConstants.playerJumpAtlas), withName: GameConstants.StringConstants.jumpPrefixKey)
        runFrames = AnimationHelper.loadTextures(from: SKTextureAtlas(named: GameConstants.StringConstants.playerRunAtlas), withName: GameConstants.StringConstants.runPrefixKey)
        dieFrames = AnimationHelper.loadTextures(from: SKTextureAtlas(named: GameConstants.StringConstants.playerDieAtlas), withName: GameConstants.StringConstants.diePrefixKey)
        
    }
    
    func animate(for state: PlayerState) {
        removeAllActions()
        switch state {
            case .IDLE:
                self.run(SKAction.repeatForever(SKAction.animate(with: idleFrames, timePerFrame: 0.05, resize: true, restore: true)))
            case .RUNNING:
                self.run(SKAction.repeatForever(SKAction.animate(with: runFrames, timePerFrame: 0.05, resize: true, restore: true)))
        }
    }
    
}
