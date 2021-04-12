//
//  HeaderBackground.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI Maslowski on 05/11/2020.
//

import SwiftUI

struct HeaderBackground: View {
    
    var body: some View {
        
        Rectangle()
            .fill(LinearGradient(gradient: Gradient(colors: [Color.darkGreen, Color.lightGreen]), startPoint: .leading, endPoint: .trailing))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .frame(height: 80, alignment: .top)
    }
    
}

struct HeaderBackground_Previews: PreviewProvider {
    static var previews: some View {
        HeaderBackground()
    }
}
