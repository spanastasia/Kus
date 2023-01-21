//
//  SwiftUIView.swift
//  
//
//  Created by Anastasiia Spiridonova on 06.01.2023.
//

import SwiftUI

struct CellView: View {
    @ObservedObject var viewModel: CellViewModel
    
    var body: some View {
        Image(viewModel.imageName)
            .resizable()
            .frame(width: viewModel.size, height: viewModel.size)
            .offset(x: viewModel.xOffset, y: viewModel.yOffset)
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(viewModel: .init(id: "fgdjh", playerId: "hfghjk", imageName: "Character10", position: .init(x: 30, y: 50), radius: 25))
    }
}
