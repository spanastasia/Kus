//
//  File.swift
//  
//
//  Created by Anastasiia Spiridonova on 06.01.2023.
//

import Foundation

class CellViewModel: ObservableObject {
    let id: String
    let playerId: String
    let imageName: String
    
    @Published var position: CGPoint
    @Published var radius: Double
    
    var size: Double {
        radius * 2
    }
    
    var xOffset: Double {
        position.x - radius
    }
    
    var yOffset: Double {
        position.y - radius
    }
    
    init(id: String, playerId: String, imageName: String, position: CGPoint, radius: Double) {
        self.id = id
        self.playerId = playerId
        self.imageName = imageName
        self.position = position
        self.radius = radius
    }
}

extension CellViewModel: Hashable {
    static func == (lhs: CellViewModel, rhs: CellViewModel) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
