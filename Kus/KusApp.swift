//
//  KusApp.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 13.01.2023.
//

import SwiftUI
import WebSocketManager

@main
struct KusApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(gameManager: .init(webSocketManager: .init(cellLogic: cellLogic)))
        }
    }
    
    var cellLogic: CellLogic {
        SmartSammy()
    }
}
