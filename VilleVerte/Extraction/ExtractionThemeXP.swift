//
//  ExtractionTheme.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 09/11/2020.
//

import SwiftUI

struct ExtractionThemeXP: View {
    
    var challenge: Challenge
    
    var body: some View {
        VStack(spacing : 0) {
            Image(challenge.theme.image)
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.bottom, -10)
            Text("\(challenge.theme.name)")
                .foregroundColor(challenge.theme.color)
                .font(.subheadline)
                .scaledToFill()
            Text("+\(challenge.experience) points")
                .font(.title3)
                .bold()
                .padding(.top, 5)
        }
    }
}

struct ExtractionTheme_Previews: PreviewProvider {
    static var previews: some View {
        ExtractionThemeXP(challenge: challenges[0])
    }
}
