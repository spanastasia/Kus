//
//  SpinningImageView.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 16.01.2023.
//

import SwiftUI

struct SpinningImageView: View {
    let imageName: String
    @Binding var isRotating: Bool
    @State private var angle = 0.0
    
    var body: some View {
        Image(imageName)
            .rotationEffect(.degrees(angle))
            .onChange(of: isRotating) { isRotating in
                if isRotating {
                    withAnimation(.linear(duration: 1)
                        .speed(0.5).repeatForever(autoreverses: false)) {
                            angle = 360.0
                        }
                }
            }
    }
}

struct SpinningImageView_Previews: PreviewProvider {
    static var previews: some View {
        SpinningImageView(imageName: "person", isRotating: .constant(true))
    }
}
