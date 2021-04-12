//
//  AroundMe.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI Maslowski on 08/11/2020.
//

import SwiftUI
import MapKit

struct AroundMe: View {
    
    
    
    @State private var pickerSelection = "Tous les challenges"
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.851332, longitude: 2.384032), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    
    @State private var trackingMode = MapUserTrackingMode.follow
    
    // Affichage sheet
    @State var showDetailChallenge = false
    @State var showForm = false
    @State private var currentChallenge: Challenge?
    
    private var allChall: [Challenge] {
        if pickerSelection == "Consommation" {
            return challengeConsommation
        } else if pickerSelection == "Zéro déchet" {
            return challengeZeroDechets
        } else if pickerSelection == "Mobilité" {
            return challengeMobilite
        } else if pickerSelection == "Energie" {
            return challengeEnergie
        } else if pickerSelection == "Sortie éducative" {
            return challengeSortiesEducatives
        } else {
            return aroundMeChallenges
        }
    }
    
    init() {
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
        
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.darkGreen, Color.lightGreen]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.top)
                VStack(spacing: 0) {
                    Picker("", selection: $pickerSelection) {
                        Image(systemName: "eyes")
                            .tag("Tous les challenges")
                        Image(systemName: "arrow.3.trianglepath")
                            .tag("Consommation")
                        Image(systemName: "trash")
                            .tag("Zéro déchet")
                        Image(systemName: "bicycle")
                            .tag("Mobilité")
                        Image(systemName: "bolt.fill")
                            .tag("Energie")
                        Image(systemName: "figure.walk")
                            .tag("Sortie éducative")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    Text("\(pickerSelection)")
                        .foregroundColor(.black)
                        .padding(.bottom)
                    Map(coordinateRegion: $region, interactionModes: .all, annotationItems: allChall) {
                        chall in MapAnnotation(coordinate: chall.coordinate, anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                            if chall.theme == consommation {
                                ButtonInMap(showChallangeSheet: $showDetailChallenge, currentChallenge: $currentChallenge, data: chall, imageTheme: "Icone-Conso")
                            } else if chall.theme == zeroDechets {
                                ButtonInMap(showChallangeSheet: $showDetailChallenge, currentChallenge: $currentChallenge, data: chall, imageTheme: "Icone-Zero")
                            } else if chall.theme == mobilite {
                                ButtonInMap(showChallangeSheet: $showDetailChallenge, currentChallenge: $currentChallenge, data: chall, imageTheme: "Icone-Mobilite")
                            } else if chall.theme == energie {
                                ButtonInMap(showChallangeSheet: $showDetailChallenge, currentChallenge: $currentChallenge, data: chall, imageTheme: "Icone-Energie")
                            } else {
                                ButtonInMap(showChallangeSheet: $showDetailChallenge, currentChallenge: $currentChallenge, data: chall, imageTheme: "Icone-Sortie")
                            }
                        }
                    }
                    .sheet(isPresented: $showDetailChallenge){
                        ChallengeDetails(cancelBtn: $showDetailChallenge, acceptButton: $showDetailChallenge, challenge: currentChallenge)
                    }
                    
                }
                .background(Color.white)
                .navigationBarTitle(Text("Autour de moi"), displayMode: .inline)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            showForm = true
                                        }, label: {
                                            Image(systemName: "plus")
                                        }).sheet(isPresented: $showForm) {
                                            ChallengeForm(cancelButton: $showForm, addButton: $showForm)
                                        })
            }
        }
        .accentColor(.white)
    }
}

struct AroundMe_Previews: PreviewProvider {
    static var previews: some View {
        AroundMe()
    }
}
