//
//  SwiftUIView.swift
//  
//
//  Created by Anastasiia Spiridonova on 06.01.2023.
//

import SwiftUI

struct MapView: View {
    @Binding var mapSize: CGSize
    @Binding var cells: [CellViewModel]
    @Binding var food: [FoodViewModel]
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ForEach(food, id: \.id) { foodViewModel in
                FoodView(viewModel: foodViewModel)
                ForEach(cells, id: \.id) { cellViewModel in
                    CellView(viewModel: cellViewModel)
                }
            }
        }
        .frame(width: mapSize.width, height: mapSize.height, alignment: .topLeading)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(
            mapSize: .constant(.init(width: 300, height: 700)),
            cells: .constant([
                .init(
                    id: "axcvgthn",
                    playerId: "gfghgjk",
                    imageName: "5",
                    position: .init(x: 150, y: 350),
                    radius: 50
                )
            ]),
            food: .constant([
                .init(
                    id: "jghjkjnm",
                    imageName: "Food1",
                    position: .init(x: 150, y: 20)
                ),
                .init(
                    id: "pojbhvcx",
                    imageName: "Food3",
                    position: .init(x: 140, y: 30)
                )
            ])
        )
    }
}
