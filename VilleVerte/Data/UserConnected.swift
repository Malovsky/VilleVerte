//
//  UserConnected.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI Maslowski on 05/11/2020.
//

import Foundation

var currentUser: User = User(username: "James", firstName: "James", lastName: "Franco", age: 42, email: "jamesfranco@gmail.com", city: "Palo Alto", photo: "James", password: "JFranco", description: "Bonjour, moi c'est James Franco, j'adore les villes vertes.", trophy: listTrophy, challenge: challengesUserDone, experience: 895, rank: Rank.roseauFlexible, difficulty: Difficulty.intermediaire)


var challengesUserDone: [Challenge] = [
    Challenge(title: "Un bon début !", description: "Réaliser son premier défi sur l'application", members: 1, date: Date(), location: "Ou tu veux", theme: consommation, trophy: firstTrophy, difficulty: .novice),
    
    Challenge(title: "Coupure d'énergie !", description: "Eteindre les appareils qui n'ont pas besoin d'être en veille", members: 1, date: Date(), location: "A la maison", theme: energie, trophy: noRobot, difficulty: .novice),
    
    Challenge(title: "La balade du ménage", description: "Lors d'une balade en nature, ramassez les déchets humains", members: 1, date: Date(), location: "En nature", theme: zeroDechets, trophy: detritus, difficulty: .novice)
]



var firstTrophy = Trophy(name: "First !", image: "first")
var noRobot = Trophy(name: "No Robot", image: "noRobot")
var detritus = Trophy(name: "Clean walk", image: "cleanWalk")

var listTrophy = [firstTrophy, noRobot, detritus]
