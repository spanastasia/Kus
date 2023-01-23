//
//  GameRulesView.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 19.01.2023.
//

import SwiftUI

struct GameRulesView: View {
    @Binding var isShown: Bool
    
    let rules: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Button(action: { isShown = false }) {
                Image("close")
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .padding(.init(top: 8, leading: 20, bottom: 0, trailing: 0))
            LogoView()
            ScrollView {
                Text(rules)
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                    .kerning(-0.5)
                    .padding(.init(top: 0, leading: 32, bottom: 0, trailing: 40))
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(BackgroundView())
    }
}

struct GameRools_Previews: PreviewProvider {
    static var previews: some View {
        GameRulesView(isShown: .constant(true), rules: "fdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhn fdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhn fdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhn fdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhn fdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhnfdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhn fdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhnfdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhnfdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhnfdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhnfdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhnfdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhn")
    }
}
