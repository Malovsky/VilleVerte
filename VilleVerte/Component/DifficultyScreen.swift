//
//  DifficultyScreen.swift
//  ecoach
//
//  Created By Kevin MASLOWSKI  on 05/11/2020.
//

// UINavigationBar.appearance().backgroundColor = .clear

import SwiftUI

struct DifficultyScreen: View {
    
    @State var pickerSelection: String = currentUser.difficulty.rawValue
    
    var colorButton: Color {
        if pickerSelection == "Novice" {
            return .noviceButton
        }
        else if pickerSelection == "Intermédiaire" {
            return .intermediaireButton
        } else {
            return .proButton
        }
    }
    
    var textDifficulty: String {
        if pickerSelection == "Novice" {
            return "Novice"
        } else if pickerSelection == "Intermédiaire" {
            return "Intermédiaire"
        } else {
            return "Expert"
        }
    }
    
    var textDescription: String {
        if pickerSelection == "Novice" {
            return "Tu te lances,tu aimerais t'investir pour rendre ta ville verte, mais tu as besoin d'actions concrètes pour passer le cap !"
        } else if pickerSelection == "Intermédiaire" {
            return "Tu réalises déjà des actions vertes, et souhaites te mobiliser davantage !"
        } else {
            return "Tu es un master des actions d'ecocitoyenneté, et tu veux te surpasser !"
        }
    }
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.darkGreen, Color.lightGreen]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.top)
            VStack {
                Picker(selection: $pickerSelection, label: Text("Choix du niveau"), content: {
                    Text("Novice").tag("Novice")
                    Text("Intermédiaire").tag("Intermédiaire")
                    Text("Expert").tag("Expert")
                })
                .pickerStyle(InlinePickerStyle())
                DifficultyView(colorButton: colorButton, textDifficulty: textDifficulty, textDescription: textDescription)
                Spacer()
            }
            .frame(width: 420, height: 725)
            .background(Color.white)
            .navigationBarTitle(Text("Choix de la difficulté"), displayMode: .automatic)
            .accentColor(.black)
        }
    }
}

struct DifficultyScreen_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            DifficultyScreen()
        }
    }
}
