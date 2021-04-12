//
//  Location.swift
//  VilleVerte
//
//  Created by Kevin Maslowski on 10/11/2020.
//

import Foundation
import MapKit
import SwiftUI

struct Location: Identifiable {
    
    let id = UUID()
    let title: String
    let coordinate: CLLocationCoordinate2D
    let theme: Theme
    
}

extension Location {
    
    static func getEnergyChall() -> [Location] {
        return [
            Location(title: "Home", coordinate: CLLocationCoordinate2D(latitude: 48.851332, longitude: 2.384032), theme: consommation),
            Location(title: "Home", coordinate: CLLocationCoordinate2D(latitude: 48.751332, longitude: 2.284032), theme: zeroDechets)
//            Location(title: "Twin Tower", coordinate: CLLocationCoordinate2D(latitude: 3.157804, longitude: 101.711869))
        ]
    }
    
//    static func getZeroDechetChall() -> [Location] {
//        return [
//            Location(title: "Twin Tower", coordinate: CLLocationCoordinate2D(latitude: 3.157804, longitude: 101.711869))
//        ]
//    }
    
}
