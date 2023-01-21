//
//  GameView.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 20.01.2023.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var gameManager: GameManager
    
    @State var showRules = true
    @State var showMenu = true
    var body: some View {
        ZStack(alignment: .topLeading) {
            ScrollView([.horizontal, .vertical], showsIndicators: true) {
                MapView(
                    mapSize: $gameManager.mapSize,
                    cells: $gameManager.cells,
                    food: $gameManager.food
                )
            }
            if showMenu {
                MenuView()
            }
            BurgerButton(menuOpened: $showMenu)
                .padding(20)
        }
    }
}
