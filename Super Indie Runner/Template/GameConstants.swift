//
//  GameConstants.swift
//  Super Indie Runner
//
//  Created by ShaneBee on 2019-12-04.
//  Copyright © 2019 ShaneBee. All rights reserved.
//

import Foundation
import CoreGraphics


struct GameConstants {
    
    struct PhysicsCategories {
        static let noCategory: UInt32 = 0
        static let allCategory: UInt32 = UInt32.max
        static let playerCategory: UInt32 = 0x1
        static let groundCategory: UInt32 = 0x1 << 1
        static let finishedCategory: UInt32 = 0x1 << 2
        static let collectibleCategory: UInt32 = 0x1 << 3
        static let enemyCategory: UInt32 = 0x1 << 4
        static let frameCategory: UInt32 = 0x1 << 5
        static let ceilingCategory: UInt32 = 0x1 << 6
    }
    
    struct ZPositions {
        static let farBGZ: CGFloat = 0
        static let closeBGZ: CGFloat = 1
        static let worldZ: CGFloat = 2
        static let objectZ: CGFloat = 3
        static let playerZ: CGFloat = 4
        static let hudZ: CGFloat = 5
    }
    
    struct StringConstants {
        static let gameName = "Super Indie Run"
        static let groundTilesName = "Ground Tiles"
        static let worldBackgroundNames = ["DesertBackground", "GrassBackground"]
        static let menuBackground = "MenuBackground"
        static let foregroundLayer = "ForegroundLayer"
        static let playerName = "Player"
        static let playerImageName = "Idle_0"
        static let groundNodeName = "GroundNode"
        static let finishLineName = "FinishLine"
        static let enemyName = "Enemy"
        static let coinName = "Coin"
        static let coinImageName = "gold0"
        static let superCoinImageName = "SuperCoin"
        static let superCoinNames = ["Super1", "Super2", "Super3"]
        static let gameFontName = "Unanimous Inverted -BRK-"
        static let playButton = "PlayButton"
        static let retryButton = "RetryButton"
        static let menuButton = "MenuButton"
        static let pauseButton = "PauseButton"
        static let emptyButton = "EmptyButton"
        static let cancelButton = "CancelButton"
        static let largePopup = "PopupLarge"
        static let smallPopup = "PopupSmall"
        static let fullStarName = "StarFull"
        static let emptyStarName = "StarEmpty"
        static let bannerName = "Banner"
        static let popupButtonNames = ["MenuButton", "PlayButton", "RetryButton", "CancelButton"]
        static let powerUpName = "Powerup"
        
        static let scoreScoreKey = "score"
        static let scoreCoinsKey = "coins"
        static let scoreStarsKey = "stars"
        
        static let pausedKey = "Paused"
        static let completedKey = "Completed"
        static let failedKey = "Failed"
        
        static let playerIdleAtlas = "Player Idle Atlas"
        static let playerRunAtlas = "Player Run Atlas"
        static let playerJumpAtlas = "Player Jump Atlas"
        static let playerDieAtlas = "Player Die Atlas"
        
        static let idlePrefixKey = "Idle_"
        static let runPrefixKey = "Run_"
        static let jumpPrefixKey = "Jump_"
        static let diePrefixKey = "Die_"
        static let coinRotateAtlas = "Coin Rotate Atlas"
        static let coinPrefixKey = "gold"
        
        static let jumpUpActionKey = "JumpUp"
        static let brakeDescendActionKey = "BrakeDescend"
        
        static let coinDustEmitterKey = "CoinDustEmitter"
        static let brakeSparkEmitterKey = "BrakeSparkEmitter"
        static let powerupEmitterkey = "PowerupEmitter"
    }
    
}
