//
//  User.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 04/11/2020.
//

import Foundation
import SwiftUI

struct User: Identifiable {
    
    var id = UUID()
    var username: String
    var firstName: String
    var lastName: String
    var age: Int
    var email: String
    var city: String
    var photo: String
    var password: String
    var description: String
    var trophy: [Trophy]
    var challenge: [Challenge]
    var experience: Int
    var rank: Rank
    var difficulty: Difficulty
    
    internal init(id: UUID = UUID(), username: String, firstName: String, lastName: String, age: Int, email: String, city: String, photo: String, password: String, description: String, trophy: [Trophy], challenge: [Challenge], experience: Int, rank: Rank, difficulty: Difficulty) {
        self.id = id
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.email = email
        self.city = city
        self.photo = photo
        self.password = password
        self.description = description
        self.trophy = trophy
        self.challenge = challenge
        self.experience = experience
        self.rank = rank
        self.difficulty = difficulty
    }
    
    // USER pour ranking AMI/VILLE : on n'affiche que le username, photo, experience, rank
    init(username: String, photo: String, experience: Int, rank: Rank) {
        self.username = username
        self.photo = photo
        self.experience = experience
        self.rank = rank
        self.firstName = ""
        self.lastName = ""
        self.age = 0
        self.email = ""
        self.city = ""
        self.password = ""
        self.description = ""
        self.trophy = [Trophy]()
        self.challenge = [Challenge]()
        self.difficulty = Difficulty.novice
    }
    
}
