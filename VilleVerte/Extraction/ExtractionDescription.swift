//
//  ExtractionDescription.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 09/11/2020.
//

import SwiftUI

struct ExtractionDescription: View {
    var challenge: Challenge
    var body: some View {
        
        VStack {
        Text("💡On éclaire ta lanterne💡")
            .font(.title3)
            .bold()
            .foregroundColor(.white)
            .frame(height: 30)
            .background(challenge.theme.color)
            .cornerRadius(10)
        
        Text(challenge.description)
            .padding()
            .multilineTextAlignment(.leading)
        }.frame(width: 320, height: 245)
        .background(Color.whiteHouse)
        .foregroundColor(.black)
        .cornerRadius(15)
    }
    
}


struct ExtractionDescription_Previews: PreviewProvider {
    static var previews: some View {
        ExtractionDescription(challenge: bigChallenges[0])
    }
}
