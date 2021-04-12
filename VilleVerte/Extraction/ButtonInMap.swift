//
//  ButtonInMap.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI Maslowski on 11/11/2020.
//

import SwiftUI

struct ButtonInMap: View {
    
    @Binding var showChallangeSheet: Bool
    @Binding var currentChallenge: Challenge?
    var data: Challenge
    var imageTheme: String
    
    var body: some View {
        Button(action: {
            self.showChallangeSheet.toggle()
            self.currentChallenge = data
        }, label: {
            VStack {
                Image("\(imageTheme)")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
                
        })
    }
}

struct ButtonInMap_Previews: PreviewProvider {
    static var previews: some View {
        ButtonInMap(showChallangeSheet: .constant(false), currentChallenge: .constant(aroundMeChallenges[0]), data: aroundMeChallenges[0], imageTheme: "Icone-Mobilite")
    }
}
