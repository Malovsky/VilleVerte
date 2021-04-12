//
//  TrophyRow.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI Maslowski on 05/11/2020.
//

import SwiftUI

struct TrophyRow: View {
    
    var data: Trophy
    
    var body: some View {
        Image.init("\(data.image)")
            .resizable()
            .frame(width: 90, height: 90)
    }
}

struct TrophyRow_Previews: PreviewProvider {
    static var previews: some View {
        TrophyRow(data: Trophy(name: "trophy", image: "first"))
    }
}
