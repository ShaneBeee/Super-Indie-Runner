//
//  MenuScene.swift
//  Super Indie Runner
//
//  Created by ShaneBee on 2019-12-15.
//  Copyright © 2019 ShaneBee. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {
    
    var sceneManagerDelegate: SceneManagerDelegate?

    override func didMove(to view: SKView) {
        layoutView()
    }
    
    func layoutView() {
        let logoLabel = SKLabelNode(fontNamed: GameConstants.StringConstants.gameFontName)
        logoLabel.text = GameConstants.StringConstants.gameName.uppercased()
        logoLabel.fontSize = 200.0
        logoLabel.fontColor = UIColor.white
        logoLabel.scale(to: frame.size, width: true, multiplier: 0.8)
        logoLabel.position = CGPoint(x: frame.midX, y: frame.maxY*0.75 - logoLabel.frame.size.height/2)
        logoLabel.zPosition = GameConstants.ZPositions.hudZ
        addChild(logoLabel)
        
        let startButton = SpriteKitButton(defaultButtonImage: GameConstants.StringConstants.playButton, action: goToLvelScene, index: 0)
        startButton.scale(to: frame.size, width: false, multiplier: 0.1)
        startButton.position = CGPoint(x: frame.midX, y: frame.midY)
        startButton.zPosition = GameConstants.ZPositions.hudZ
        addChild(startButton)
        
    }
    
    func goToLvelScene(_: Int) {
        sceneManagerDelegate?.presentLevelScene(for: 0)
    }
    
}
