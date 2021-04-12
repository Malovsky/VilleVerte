//
//  ButtonStyle.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI Maslowski on 05/11/2020.
//

import SwiftUI

struct ButtonStyles: View {
    var body: some View {
        Text("Mon bouton")
            .modifier(ButtonStyle())
    }
}

struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 150, height: 70)
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.darkGreen, Color.lightGreen]), startPoint: .leading, endPoint: .trailing))
                
            )
    }
}

struct ButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyles()
    }
}
