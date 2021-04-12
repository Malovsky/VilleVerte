//
//  ImageAccueil.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 11/11/2020.
//

import SwiftUI

struct ImageAccueil: View {
    
    var body: some View {
        ZStack(alignment: .bottom){
            Image("Todaysun")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 350, height: 255, alignment: .center)
            VStack {
                Text("Bonjour \(currentUser.username), heureux de te revoir !")
                    .foregroundColor(.black)
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 100)
                Text("\(ecoType)")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color.darkGreen)
                    .opacity(0.9)
                    .multilineTextAlignment(.center)
                    .padding(10)
            }
        }
    }
}

struct ImageAccueil_Previews: PreviewProvider {
    static var previews: some View {
        ImageAccueil()
    }
}
