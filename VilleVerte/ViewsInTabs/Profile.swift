//
//  Profile.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI Maslowski on 05/11/2020.
//

import SwiftUI

struct Profile: View {
    
    var body: some View {
        NavigationView {
            VStack(spacing: -80) {
                ZStack {
                    HeaderBackground()
                    HStack {
                        Spacer()
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(.white)
                            .padding()
                            .font(.title2)
                    }
                }
                VStack {
                    Image("\(currentUser.photo)")
                        .resizable()
                        .frame(width: 230, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                        .clipShape(Circle())
                    Text("\(currentUser.username)")
                        .font(.system(size: 30))
                        .bold()
                    Text("\(currentUser.experience) points")
                        .font(.system(size: 20))
                    Spacer()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30)
                    Text("« \(currentUser.rank.rawValue) »")
                        .font(.system(size: 20))
                        .italic()
                        .bold()
                    Image.init(currentUser.rank.rawValue)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                    Spacer()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30)
                    VStack(spacing: -15) {
                        HStack(spacing: 200) {
                            Text("Trophées")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            Text("voir tout")
                                .baselineOffset(-8)
                                .font(.system(size: 15))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.lightGreen)
                                .frame(width: 380, height: 120)
                                .padding()
                            HStack(spacing: 40) {
                                ForEach(currentUser.trophy) { tro in
                                    TrophyRow(data: tro)
                                    
                                }
                            }
                        }
                    }
                    HStack(spacing: 50) {
                        NavigationLink(
                            destination: SelectRanking()) {
                            Text("Vous comparer")
                                .multilineTextAlignment(.center)
                                .modifier(ButtonStyle())
                        }
                        NavigationLink(
                            destination: DifficultyScreen()) {
                            Text("Adapter vos \nchallenges")
                                .multilineTextAlignment(.center)
                                .modifier(ButtonStyle())
                        }
                        
                    }
                }
                
                Spacer()
            }
            .navigationBarTitle("", displayMode: .inline)
            
        }
        .accentColor( .white)
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
