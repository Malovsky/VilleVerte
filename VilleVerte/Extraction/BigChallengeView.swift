//
//  BigChallengeView.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 05/11/2020.
//

import SwiftUI

// Contient l'extraction de vue pour un BIG CHALLENGE

struct BigChallengeView: View {
    
    var bigChallenge: Challenge
    
    var body: some View {
        
        VStack (spacing: 0) {
            Image(bigChallenge.trophy.image)
                .resizable()
                .frame(width: 40, height: 40)
                .padding(.top, 0)
            Text("\(bigChallenge.trophy.name)" as String)
                .font(.subheadline)
                .multilineTextAlignment(.center)

            Image(bigChallenge.theme.image)
                .resizable()
                .frame(width: 40, height: 40)
                .padding(.bottom, -5)
            Text(bigChallenge.theme.name)
                .font(.subheadline)
                .foregroundColor(bigChallenge.theme.color)
                .multilineTextAlignment(.center)
                .padding(.bottom, 0)
            Spacer()
            Text(bigChallenge.title)
                .foregroundColor(.white)
                .frame(width: 350, height: 50)
                .background(bigChallenge.theme.color)
                .cornerRadius(15)
                .padding(.bottom, 5)
        }
        .frame(width: 350, height: 150)
        .padding()
        .background(Color.whiteHouse)
        .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
        .shadow(radius: 5)
    }
}

struct BigChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        BigChallengeView(bigChallenge: bigChallenges[0])
    }
}
