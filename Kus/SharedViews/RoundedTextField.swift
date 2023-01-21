//
//  TextField.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 13.01.2023.
//

import SwiftUI

struct RoundedTextField: View {
    @Binding var text: String
    let placeHolder: String
    let opacity: Double
    
    var body: some View {
        TextField(placeHolder, text: $text)
            .font(.system(size: 18))
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color.white.opacity(opacity))
            .cornerRadius(8)
    }
    
}

struct RoundedTextField_Previews: PreviewProvider {
    static var previews: some View {
        RoundedTextField(text: .constant("RoomName"), placeHolder: "Placeholder", opacity: 0.5)
    }
}
