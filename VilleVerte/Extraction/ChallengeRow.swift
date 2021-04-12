//
//  ChallengeRow.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 05/11/2020.
//

//Va contenir l'extraction de vue, qui va définir les éléments présents dans une ligne de la liste
import SwiftUI

struct ChallengeRow: View {
    
    var challenge: Challenge
    
    var body: some View {
        
        VStack(spacing: 5) {
            ExtractionThemeXP(challenge: challenge)
            
            Text(challenge.title)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding()
                .foregroundColor(.white)
                .frame(width: 150, height: 100)
                .background(challenge.theme.color)
                .cornerRadius(15)
        }
        .frame(width: 140, height: 170)
        .padding()
        .background(Color.whiteHouse)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}

struct ChallengeRow_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeRow(challenge: challenges[0])
    }
}
