//
//  Theme.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 04/11/2020.
//

import Foundation
import SwiftUI

struct Theme: Identifiable, Equatable {
    internal init(id: UUID = UUID(), name: String, color: Color, image: String, desription: String) {
        self.id = id
        self.name = name
        self.color = color
        self.image = image
        self.desription = desription
    }
    
    
    var id = UUID()
    var name: String
    var color: Color
    var image: String
    var desription: String
    
}
