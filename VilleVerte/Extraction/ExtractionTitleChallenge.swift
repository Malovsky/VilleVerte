//
//  ExtractionTitleChallenge.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 09/11/2020.
//

import SwiftUI

struct ExtractionTitleChallenge: View {
    
    var challenge: Challenge
    var title: String {
        if challenge.trophy.name == "" && challenge.coordinate.latitude == 0 {
            return "Challenge journalier"
        } else if challenge.coordinate.latitude != 0 && challenge.coordinate.longitude != 0 {
            return "Challenge de la communauté"
        } else {
            return "Challenge de la semaine"
        }
    }
    
    var body: some View {
        
        
        VStack {
            Text(title)
                .font(.title2)
                .bold()
            Text(challenge.title)
                .scaledToFill()

        }
        .frame(width: 320, height: 60)
        .padding()
        .background(challenge.theme.color)
        .foregroundColor(.white)
        .cornerRadius(15)
    }
    
}

struct ExtractionTitleChallenge_Previews: PreviewProvider {
    static var previews: some View {
        ExtractionTitleChallenge(challenge: challenges[0])
    }
}
