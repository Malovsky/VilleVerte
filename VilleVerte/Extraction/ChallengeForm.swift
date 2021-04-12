//
//  ChallengeForm.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 08/11/2020.
//

import SwiftUI

struct ChallengeForm: View {
    
    //Variables pour annuler/ajouter challenge
    @Binding var cancelButton: Bool
    @Binding var addButton: Bool
    
    //Variables picker
    @State private var selectedTheme = ""
    var themes = [consommation, energie, mobilite, zeroDechets, sorties]
    var experiences = [10, 20, 30, 40, 50]
    @State private var selectedDifficulty: Difficulty = .novice
    @State private var selectedStartDate = Date()
    @State private var selectedEndDate = Date()
    
    @State private var selectedRank: Rank = .jeunePousse
    @State private var selectedExperience = 10
    //    Variable stepper
    @State private var stepperValue = 0
    //    Variables textfields
    @State private var title = ""
    @State private var description = ""
    @State private var date = Date()
    @State private var members = 1
    @State private var town = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                        cancelButton.toggle()
                    }, label: { Text("Annuler") })
                    Spacer()
                    Button(action: {
                        addButton.toggle()
                    }, label: { Text("Ajouter") })
                }.padding(20)
                
                Form {
                    Section(header: Text("Ton  challenge"))
                    {
                        TextField("Titre", text: $title)
                        TextField("Description", text: $description)
                        Stepper("Nombre de participants : \(stepperValue)", value: $stepperValue, in: 0...50, step: 5)
                    }
                    
                    Section(header: Text("Paramètres")) {
                        Picker(selection: $selectedTheme, label: Text("Choisir un thème")) {
                            ForEach(themes, id: \.id){ theme in
                                Text(theme.name)
                                    .tag(theme.name)
                            }
                        }
                        Picker(selection: $selectedExperience, label: Text("Experience en point")) {
                            ForEach(experiences, id: \.self){ exp in
                                Text("\(exp)").tag(exp)
                            }
                        }
                        Picker(selection: $selectedDifficulty, label: Text("Choisir une difficulté")) {
                            ForEach(Difficulty.allCases, id: \.rawValue ) {
                                difficulty in
                                Text("\(difficulty.rawValue)").tag(difficulty)
                            }
                        }
                    }
                    
                    Section(header: Text("Date et lieu")) {
                        
                        TextField("Ville de l'événement", text: $town)
                        
                        DatePicker("Début du challenge", selection: $selectedStartDate, displayedComponents: [.date, .hourAndMinute])
                        DatePicker("Fin du challenge", selection: $selectedEndDate, displayedComponents: [.date, .hourAndMinute])
                    }
                    
                }
            }
            .navigationBarTitle(Text(""), displayMode: .inline)
        }
    }
}


struct ChallengeForm_Previews: PreviewProvider {
    static var previews: some View {
        
        ChallengeForm(cancelButton: .constant(true), addButton: .constant(true))
        
    }
}

