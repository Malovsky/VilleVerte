//
//  ExtractionTrophyImage.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 09/11/2020.
//

import SwiftUI

struct ExtractionTrophyImage: View {
    
    var bigChallenge: Challenge
    
    var body: some View {
        Image(bigChallenge.trophy.image)
            .resizable()
            .frame(width: 50, height: 50, alignment: .leading)
    }
}

struct ExtractionTrophyImage_Previews: PreviewProvider {
    static var previews: some View {
        ExtractionTrophyImage(bigChallenge: bigChallenges[0])
    }
}
