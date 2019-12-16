//
//  HUDDelegate.swift
//  Super Indie Runner
//
//  Created by ShaneBee on 2019-12-06.
//  Copyright © 2019 ShaneBee. All rights reserved.
//

import Foundation

protocol HUDDelegate {
    
    func updateCoinLabel(coins: Int)
    func addSuperCoin(index: Int)
    
}
