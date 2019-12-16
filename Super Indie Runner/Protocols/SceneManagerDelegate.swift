//
//  SceneManagerDelegate.swift
//  Super Indie Runner
//
//  Created by ShaneBee on 2019-12-15.
//  Copyright © 2019 ShaneBee. All rights reserved.
//

import Foundation

protocol SceneManagerDelegate {
    
    func presentLevelScene(for world: Int)
    func presentGameScene(for level: Int, in world: Int)
    func presentMenuScene()
    
}
