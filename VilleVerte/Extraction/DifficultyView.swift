//
//  DifficultyView.swift
//  ecoach
//
//  Created By Kevin MASLOWSKI  on 05/11/2020.
//

import SwiftUI
struct DifficultyView: View {
    var colorButton: Color
    var textDifficulty: String
    var textDescription: String
    
    @State var activitedButton: Bool = false
    
    var body: some View {
        Button(action: {
            activitedButton.toggle()
        }) {
                VStack {
                    Text(textDifficulty)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(5)
                    Text(textDescription)
                        .foregroundColor(.white)
                        .font(.title3)
        
                }
                .frame(width: 340, height: 160)
                .padding()
                .background(colorButton)
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(activitedButton ? Color.orange :
                                    Color.clear,lineWidth: 4)
                )
        }
    }
}

struct DifficultyView_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyView(colorButton: Color("Green1"), textDifficulty: "Novice", textDescription: "Tu te lances...")
    }
}
