//
//  SmartSammy.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 23.01.2023.
//

import Foundation
import WebSocketManager

class SmartSammy: CellLogic {
    var gameConfig: GameConfig?
    
    func configure(gameConfig: GameConfig) {
        self.gameConfig = gameConfig
    }
    
    func handleGameUpdate(mapState: MapState) -> [CellActivity] {
        // Implement your logic here
    }
}
