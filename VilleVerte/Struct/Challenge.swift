//
//  Challenge.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 04/11/2020.
//

import Foundation
import MapKit

struct Challenge: Identifiable {
    internal init(id: UUID = UUID(), title: String, description: String, members: Int, date: Date, location: String, theme: Theme, trophy: Trophy, experience: Int, difficulty: Difficulty, coordinate: CLLocationCoordinate2D) {
        self.id = id
        self.title = title
        self.description = description
        self.members = members
        self.date = date
        self.location = location
        self.theme = theme
        self.trophy = trophy
        self.experience = experience
        self.difficulty = difficulty
        self.coordinate = coordinate
    }
    
    
    var id = UUID()
    var title: String
    var description: String
    var members: Int
    var date: Date
    var location: String
    var theme: Theme
    var trophy: Trophy
    var experience: Int
    var difficulty: Difficulty
    let coordinate: CLLocationCoordinate2D
    
//    internal init(id: UUID = UUID(), title: String, description: String, members: Int, date: Date, location: String, theme: Theme, trophy: Trophy, experience: Int, difficulty: Difficulty, coordinate: CLLocationCoordinate2D) {
//        self.id = id
//        self.title = title
//        self.description = description
//        self.members = members
//        self.date = date
//        self.location = location
//        self.theme = theme
//        self.trophy = trophy
//        self.experience = experience
//        self.difficulty = difficulty
//        self.coordinate = coordinate
//    }
    
    init(title: String, description: String, members: Int, date: Date, location: String, theme: Theme, trophy: Trophy, difficulty: Difficulty) {
        self.title = title
        self.description = description
        self.members = members
        self.date = date
        self.location = location
        self.theme = theme
        self.trophy = trophy
        self.difficulty = difficulty
        self.experience = 0
        self.coordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
    }

    init(title: String, description: String, members: Int, date: Date, location: String, theme: Theme, experience: Int, difficulty: Difficulty) {
        self.title = title
        self.description = description
        self.members = members
        self.date = date
        self.location = location
        self.theme = theme
        self.experience = experience
        self.difficulty = difficulty
        self.trophy = Trophy(name: "", image: "")
        self.coordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
    }
    
    init(title: String, description: String, members: Int, date: Date, location: String, theme: Theme, experience: Int, difficulty: Difficulty, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.description = description
        self.members = members
        self.date = date
        self.location = location
        self.theme = theme
        self.experience = experience
        self.difficulty = difficulty
        self.trophy = Trophy(name: "", image: "")
        self.coordinate = coordinate
    }
}
