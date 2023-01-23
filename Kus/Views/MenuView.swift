//
//  MenuView.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 18.01.2023.
//

import SwiftUI

struct MenuView: View {
    @Binding var showRules: Bool
    @State var testRoomSelected = false
    @EnvironmentObject var gameManager: GameManager
    var body: some View {
        VStack {
            Button(action: gameManager.connectToRoom) {
                Image("play")
            }
            .padding(.init(top: 240, leading: 0, bottom: 116, trailing: 0))
            VStack(spacing: 16) {
                RoundedTextField(text: $gameManager.roomName, placeHolder: "", opacity: 1)
                ChexBoxView(labelText: "Test room", isSelected: $testRoomSelected)
                .padding(.init(top: 4, leading: 0, bottom: 0, trailing: 0))
                PrimaryButton(buttonText: "START", action: gameManager.connectToRoom)
                Button(action: { showRules.toggle() }) {
                    Text("game rules")
                        .kerning(0.6)
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .underline()
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
            Spacer()
            
        }
        .padding(16)
        .background(BackgroundView(opacity: 0.7))
        .frame(maxHeight: .infinity, alignment: .top)
        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
    }
}
