//
//  ChallengeDetails.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 05/11/2020.
//

// Va contenir le détails d'un challenge. S'affiche en modal; Est aussi une extraction de vue
import SwiftUI

struct ChallengeDetails: View {
    
    @Binding var cancelBtn: Bool
    @Binding var acceptButton: Bool
//    @Binding var showAlertChallenge: Bool
    
    var challenge: Challenge?
    
    var body: some View {
        
        VStack {
        if challenge != nil {
            
                HStack {
                    Button(action: {
                        cancelBtn.toggle()
                    }, label: {
                        Text("Annuler")
                    })
                    Spacer()
                    Button(action: {
                        acceptButton.toggle()
                    }, label: {
                        Text("Accepter")
                    })
                }.padding()

            
            VStack {
                
                ExtractionTitleChallenge(challenge: challenge!)
                
                VStack(spacing: 10){
                    
                    ExtractionThemeXP(challenge: challenge!)
                    
                    Image(systemName: "mappin.circle")
                        .resizable()
                        .scaledToFit()
                    Text("Lieu : \(challenge!.location)")
                        .multilineTextAlignment(.center)
                    Image(systemName: "person.3")
                        .resizable()
                        .scaledToFit()
                    Text("Participants : \(challenge!.members) personne(s) minimum")
                        .multilineTextAlignment(.center)
                    Image(systemName: "rosette")
                        .resizable()
                        .scaledToFit()
                    Text("Niveau : \(challenge!.difficulty.rawValue)")
                        .multilineTextAlignment(.center)
                    ExtractionDescription(challenge: challenge!)
                }
                .cornerRadius(18)
                .padding()
            }
            .background(Color.whiteHouse)
            .cornerRadius(15)
            .padding()
        }
    }
    }
}

struct ChallengeDetails_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeDetails(cancelBtn: .constant(true), acceptButton: .constant(true), challenge: challenges[0])
    }
}
