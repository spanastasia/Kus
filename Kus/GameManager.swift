//
//  GameManager.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 20.01.2023.
//

import Foundation
import WebSocketManager

class GameManager: ObservableObject {
    let webSocketManager: WebSocketManager
    
    let characterImageName = "Character1"
    
    @Published var userName: String = ""
    @Published var roomName: String = ""
    @Published var isConnecting: Bool = false
    
    @Published var playerId: String = ""
    @Published var mapSize: CGSize = .zero
    @Published var cells: [CellViewModel] = []
    @Published var food: [FoodViewModel] = []
    @Published var showGame = false
    
    
    init(webSocketManager: WebSocketManager) {
        self.webSocketManager = webSocketManager
        webSocketManager.delegate = self
    }
    
    func connectToRoom() {
        cells = []
        food = []
        webSocketManager.connect(roomName: roomName)
    }
    
    func connect() {
        isConnecting = true
        cells = []
        food = []
        webSocketManager.connect(roomName: "default")
    }
}

extension GameManager: WebSocketManagerDelegate {
    func webSocketManager(didConnect player: String) {
        playerId = player
        showGame = mapSize != .zero
        isConnecting = showGame
    }
    
    func webSocketManager(didReceive gameConfig: GameConfig) {
        let width = gameConfig.map.width
        let height = gameConfig.map.height
        mapSize = .init(width: width, height: height)
        showGame = playerId != ""
        isConnecting = showGame
    }
    
    func webSocketManager(didReceive newCells: [Cell]) {
        newCells.forEach { newCell in
            guard !cells.contains(where: { $0.id == newCell.id }) else { return }
            cells.append(
            CellViewModel(
                id: newCell.id,
                playerId: newCell.player,
                imageName: characterImageName(owned: newCell.own, playerId: newCell.player),
                position: .init(x: newCell.position.x, y: newCell.position.y),
                radius: newCell.radius
            )
        )}
    }
    
    func webSocketManager(didRemove cells: [Cell]) {
        cells.forEach { removedCell in
            self.cells.removeAll {
                $0.id == removedCell.id
            }
        }
    }
    
    func webSocketManager(didUpdate cells: [Cell]) {
        cells.forEach { updatedCell in
            guard let cellViewModel = self.cells.first(where: { $0.id == updatedCell.id })
            else { return }
            cellViewModel.position = .init(x: updatedCell.position.x, y: updatedCell.position.y)
            cellViewModel.radius = updatedCell.radius
        }
    }
    
    func webSocketManager(didReceive newFood: [Food]) {
        newFood.forEach { newFoodItem in
            guard !food.contains(where: { $0.id == newFoodItem.id }) else { return }
            food.append(
            FoodViewModel(
                id: newFoodItem.id,
                imageName: foodImageName,
                position: .init(x: newFoodItem.position.x, y: newFoodItem.position.y)
            )
        )}
    }
    
    func webSocketManager(didRemove food: [Food]) {
        food.forEach { removedFood in
            self.food.removeAll {
                $0.id == removedFood.id
            }
        }
    }
    
    private func characterImageName(owned: Bool, playerId: String) -> String {
        guard !owned else {
            return characterImageName
        }
        
        if let imageName = cells.first(where: { $0.playerId == playerId })?.imageName {
            return imageName
        }
        
        if let randomNumber = (2...12).randomElement() {
            return "Character\(randomNumber)"
        } else {
            return "Character5"
        }
    }
    private var foodImageName: String {
        if let randomNumber = (1...12).randomElement() {
            return "Food\(randomNumber)"
        } else {
            return "Food5"
        }
    }
}


