//
//  ContentView.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 13.01.2023.
//

import SwiftUI
import WebSocketManager

struct ContentView: View {
    @StateObject var gameManager: GameManager
    let webSocketManager = WebSocketManager(cellLogic: FatJohny())
    
    var body: some View {
        NavigationStack {
            AuthorizationView()
                .navigationDestination(isPresented: $gameManager.showGame) {
                    GameView()
                        .navigationBarBackButtonHidden()
                }
        }
        .environmentObject(gameManager)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(gameManager: .init(webSocketManager: .init(cellLogic: FatJohny())))
    }
}
