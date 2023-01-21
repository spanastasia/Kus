//
//  SwiftUIView.swift
//  
//
//  Created by Anastasiia Spiridonova on 06.01.2023.
//

import Foundation

class FoodViewModel: ObservableObject {
    let id: String
    let imageName: String
    let radius: Double = 12
    
    @Published var position: CGPoint
    
    var size: Double {
        radius * 2
    }
    
    var xOffset: Double {
        position.x - radius
    }
    
    var yOffset: Double {
        position.y - radius
    }
    
    init(id: String, imageName: String, position: CGPoint, size: Double = 25) {
        self.id = id
        self.imageName = imageName
        self.position = position
    }
}

extension FoodViewModel: Hashable {
    static func == (lhs: FoodViewModel, rhs: FoodViewModel) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
