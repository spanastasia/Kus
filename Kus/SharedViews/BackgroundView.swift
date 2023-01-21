//
//  BackgroundView.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 19.01.2023.
//

import SwiftUI

struct BackgroundView: View {
    let opacity: CGFloat
    var body: some View {
        Image("background")
            .resizable()
            .ignoresSafeArea()
            .opacity(opacity)
    }
    init(opacity: CGFloat = 1) {
        self.opacity = opacity
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
