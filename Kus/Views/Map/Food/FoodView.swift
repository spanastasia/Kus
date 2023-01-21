//
//  SwiftUIView.swift
//  
//
//  Created by Anastasiia Spiridonova on 06.01.2023.
//

import SwiftUI

struct FoodView: View {
    @ObservedObject var viewModel: FoodViewModel
    var body: some View {
        Image(viewModel.imageName)
            .resizable()
            .frame(width: viewModel.size, height: viewModel.size)
            .offset(x: viewModel.xOffset, y: viewModel.yOffset)
    }
}

struct MapItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView(viewModel: .init(id: "kjkjl", imageName: "Food12", position: .init(x: 100, y: 200), size: 100))
    }
}
