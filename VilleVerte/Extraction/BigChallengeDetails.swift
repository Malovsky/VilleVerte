//
//  BigChallengeDetails.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 05/11/2020.
//

import SwiftUI

struct BigChallengeDetails: View {
    
    @Binding var cancelButton: Bool
    @Binding var acceptButton: Bool
    @Binding var showAlertBigChallenge: Bool
    
    var bigChallenge: Challenge
    
    var body: some View {

        VStack{
            
        HStack {
            Button(action: {
                cancelButton.toggle()
            }, label: {
                Text("Annuler")
            })
            Spacer()
            Button(action: {
                showAlertBigChallenge.toggle()
                acceptButton.toggle()
            }, label: {
                Text("Accepter")
            })
        }.padding()
            VStack{
                ExtractionTitleChallenge(challenge: bigChallenge)
                
                VStack {
                    
                    VStack (spacing: 8){
                                            
                        ExtractionTrophyImage(bigChallenge: bigChallenge)
                        Text("Gagne le trophée :\n\(bigChallenge.trophy.name)")
                            .scaledToFill()
                            .multilineTextAlignment(.center)
                        
                        Image(bigChallenge.theme.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.bottom, -10)
                        Text("Thème : \(bigChallenge.theme.name)")
                            .multilineTextAlignment(.center)

                        Image(systemName: "mappin.circle")
                            .resizable()
                            .scaledToFit()
                        Text("Lieu : \(bigChallenge.location)")
                            .multilineTextAlignment(.center)
                        
                        Image(systemName: "person.3")
                            .resizable()
                            .scaledToFit()
                        Text("Participants : \(bigChallenge.members) personne(s) minimum")
                            .multilineTextAlignment(.center)
                        
                        Image(systemName: "rosette")
                            .resizable()
                            .scaledToFit()
                        Text("Niveau : \(bigChallenge.difficulty.rawValue)")
                            .multilineTextAlignment(.center)
                    }
                    
                    ExtractionDescription(challenge: bigChallenge)
                }

            }.background(Color.whiteHouse)
        }
    }
}

struct BigChallengeDetails_Previews: PreviewProvider {
    static var previews: some View {
        BigChallengeDetails(cancelButton: .constant(true), acceptButton: .constant(true), showAlertBigChallenge: .constant(false), bigChallenge: bigChallenges[0])
    }
}
