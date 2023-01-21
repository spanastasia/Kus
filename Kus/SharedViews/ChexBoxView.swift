//
//  ChexBoxView.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 19.01.2023.
//

import SwiftUI

struct ChexBoxView: View {
    let labelText: String
    @Binding var isSelected: Bool
    var body: some View {
        HStack(spacing: 12) {
            Button(
                action: { isSelected.toggle()}
            ) {
                Image(isSelected ? "checkBoxFilled" : "checkBoxOutlined")
                    .frame(width: 28, height: 28)
            }
            Text(labelText)
                .foregroundColor(.white)
                .kerning(0.6)
                .font(.system(size: 18))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ChexBoxView_Previews: PreviewProvider {
    @State static var isSelected = false
    static var previews: some View {
        ChexBoxView(labelText: "Test room", isSelected: $isSelected)
    }
}
