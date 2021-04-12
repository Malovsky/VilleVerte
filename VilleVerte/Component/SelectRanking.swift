//
//  SelectRanking.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 08/11/2020.
//

import SwiftUI

struct SelectRanking: View {
    
    @State private var pickerSelection = "amis"
    
    init() {
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
        
    }
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.darkGreen, Color.lightGreen]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.top)
            VStack {
                Picker("", selection: $pickerSelection) {
                    Text("Mes amis").tag("amis")
                    Text("Ma ville").tag("ville")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                UserDataVilleList(selectedTagName: $pickerSelection)
            }
            .frame(width: 420, height: 725)
            .background(Color.white)
            
        }
        .navigationBarTitle(Text("Classement"), displayMode: .automatic)
        .accentColor(.white)
        
    }
}


struct SelectRanking_Previews: PreviewProvider {
    static var previews: some View {
        SelectRanking()
    }
}
