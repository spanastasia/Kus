//
//  LogoView.swift
//  Kus
//
//  Created by Anastasiia Spiridonova on 13.01.2023.
//

import SwiftUI

struct LogoView: View {
    
    var body: some View {
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
