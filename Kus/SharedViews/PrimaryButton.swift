//
//  KusButton.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 13.01.2023.
//

import SwiftUI

struct PrimaryButton: View {
    let buttonText: String
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(buttonText)
                .font(.system(size: 18))
                .kerning(-0.4)
                .foregroundColor(.white)
                .padding(.vertical, 12)
                .frame(maxWidth: .infinity)
        }
        .background(Color("buttonColor"))
        .cornerRadius(8)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(buttonText: "START", action: {})
    }
}
