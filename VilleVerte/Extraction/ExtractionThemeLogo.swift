//
//  ExtractionThemeLogo.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 10/11/2020.
//

import SwiftUI

struct ExtractionThemeLogo: View {
    
    @State var activitedButton: Bool = false
    
    var theme: Theme
    
    var body: some View {
        
        Button(action: {
            activitedButton.toggle()
        }) {
            Image(theme.image)
                .resizable()
        }
        .frame(width: 100, height: 100)
        .background(theme.color)
        .clipShape(Circle())
        .overlay(
            RoundedRectangle(cornerRadius: 60)
                .stroke(activitedButton ? Color.orange :Color.clear,lineWidth: 4)
        )
    }
}

struct ExtractionThemeLogo_Previews: PreviewProvider {
    static var previews: some View {
        ExtractionThemeLogo(theme: consommation)
    }
}
