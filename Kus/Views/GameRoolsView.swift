//
//  GameRoolsView.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 19.01.2023.
//

import SwiftUI

struct GameRoolsView: View {
    let rules: String
    
    var body: some View {
        VStack(spacing: .zero) {
            Button(action: {}) {
                Image("close")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 32)
            LogoView()
            ScrollView {
                Text(rules)
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                    .kerning(-0.5)
                    .padding(.init(top: 0, leading: 32, bottom: 0, trailing: 40))
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(BackgroundView())
    }
}

struct GameRools_Previews: PreviewProvider {
    static var previews: some View {
        GameRoolsView(rules: "fdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhn fdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhn fdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhn fdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhn fdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhnfdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhn fdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhnfdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhnfdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhnfdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhnfdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhnfdsghhk jhnjhjg fghfg fdsg hhkj hnjh jgfgh fgfdsghhk jhnjhjgfgh fgfdsg hh kjhn")
    }
}
