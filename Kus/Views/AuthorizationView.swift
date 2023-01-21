//
//  AuthorizationView.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 13.01.2023.
//

import SwiftUI

struct AuthorizationView: View {
    @EnvironmentObject var gameManager: GameManager
    @State var isConnecting = false
    var body: some View {
        VStack(spacing: 124) {
            VStack(spacing: 24) {
                LogoView()
                SpinningImageView(imageName: "person", isRotating: $isConnecting)
            }
            VStack(spacing: 20) {
                RoundedTextField(text: $gameManager.userName, placeHolder: "Login", opacity: 0.75)
                PrimaryButton(buttonText: "START", action: startGame)
            }
        }
        .padding(.init(top: 70, leading: 16, bottom: 0, trailing: 16))
        .frame(maxHeight: .infinity, alignment: .top)
        .background(
            BackgroundView()
        )
        .onReceive(gameManager.$isConnecting) { state in
            isConnecting = state
        }
    }
    
    func startGame() {
        gameManager.connect()
    }
}
