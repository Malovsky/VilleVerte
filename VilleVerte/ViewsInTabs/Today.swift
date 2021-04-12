//
//  Today.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 05/11/2020.
//

import SwiftUI

struct Today: View {
    @State private var challengeBool: Bool = false
    @State private var currentChallenge: Challenge?
    @State private var bigChallengeBool: Bool = false
    
    @State var showAlertChallenge: Bool = false
    @State var showAlertBigChallenge: Bool = false
    
    var body: some View {
        
        VStack(spacing: 10) {
            
//Bloc Bienvenue top screen
ImageAccueil()
//Challenges displayed - back screen
            HStack {
                Text("Motivé ? Voici tes 5 challenges du jour")
                    .bold()
                Image(systemName: "arrow.down.app")
            }
            VStack {
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(challenges, id: \.id) {
                            current in
                            
                            Button(action: {
                                challengeBool = true
                                currentChallenge = current
                                
                            }, label: {
                                ChallengeRow(challenge: current)
                            })
                            .buttonStyle(PlainButtonStyle())
                        }
                    }.padding()
                    .sheet(isPresented: $challengeBool){
                        ChallengeDetails(cancelBtn: $challengeBool, acceptButton: $challengeBool, challenge: currentChallenge)
                    }
                }
                HStack {
                    Text("Gagne le trophée de la semaine")
                        .bold()
                    Image(systemName: "arrow.down.app")
                }
                
                Button(action: {
                    bigChallengeBool = true
                }, label: {
                    BigChallengeView(bigChallenge: bigChallenges[0])
                }).buttonStyle(PlainButtonStyle())
                
                .sheet(isPresented: $bigChallengeBool) {
                    BigChallengeDetails(cancelButton: $bigChallengeBool, acceptButton: $bigChallengeBool, showAlertBigChallenge: $showAlertBigChallenge, bigChallenge: bigChallenges[0])
                }
            }
        }
        
    }
}

struct Today_Previews: PreviewProvider {
    static var previews: some View {
        Today()
    }
}
