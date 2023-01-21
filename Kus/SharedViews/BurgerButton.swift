//
//  BurgerButton.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 19.01.2023.
//

import SwiftUI

struct BurgerButton: View {
    @Binding var menuOpened: Bool
    
    var body: some View {
        Button(
            action: {
                withAnimation {
                    menuOpened.toggle()
                }
            })
        {
            Image(menuOpened ? "close" : "burger")
        }
        .frame(height: 34)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct BurgerButton_Previews: PreviewProvider {
    @State static var menuOpened = false
    static var previews: some View {
        BurgerButton(menuOpened: $menuOpened)
    }
}
