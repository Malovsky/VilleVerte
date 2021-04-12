//
//  ChallengeData.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 04/11/2020.
//

import Foundation
import MapKit

//BIG CHALLENGE de la semaine
var bigChallenges = [
    
    Challenge(title: "Fabrique ton propre sac de courses ! ", description: "Le plastique n'est pas ton ami, mais le tissu oui ! Tu as un vieux tshirt que tu n'utilises plus ? Transforme le en ton futur sac de courses, c'est plus pratique et écologique.", members: 1, date: Date(), location: "Maison", theme: consommation, trophy: trophy[4], difficulty: .intermediaire)
]

//CHALLENGE JOURNALIER qu'on retrouve dans une liste, écran de profil
var challenges = [
    
    Challenge(title: "Achète une brosse à dents en bambou", description: "Tu veux faire du bien à tes dents et à la planète ? Passe à la brosse à dents en bambou, c'est plus facile à recycler.", members: 1, date: Date(), location: "Maison", theme: consommation, experience: 20, difficulty: .intermediaire),
    
    Challenge(title: "Journée sans transport ! GO", description: "Marcher c'est excellent pour la santé. Enfile ta paire de chaussures préférées et ne prends aucun transport de la journée.", members: 1, date: Date(), location: "Marseille", theme: mobilite, experience: 30, difficulty: .intermediaire),
    
    Challenge(title: "Achète un produit bio", description: "Le bio c'est bon, c'est beau, et en plus c'est écolo. Rends toi en magasin et remplace un de tes produits quotidiens par son équivalent bio.", members: 1, date: Date(), location: "Marseille", theme: consommation, experience: 10, difficulty: .intermediaire),
    
    Challenge(title: "Prends une douche de 3 minutes maximum !", description: "Lors d'une douche, on utilise près de 20 litres d'eau par minute. Sois responsable, douche toi en 3 minutes pour avoir un meilleur impact.", members: 1, date: Date(), location: "Maison", theme: energie, experience: 10, difficulty: .intermediaire),
    
    Challenge(title: "Rends toi dans une ferme pédagogique.", description: "S'informer, c'est aussi s'engager ! Visite une ferme pédagogique pour en apprendre plus sur les circuits courts et la production locale.", members: 1, date: Date(), location: "Marseille", theme: sorties, experience: 30, difficulty: .intermediaire)
    
]

//CHALLENGE USER, qu'on retrouve sur le profil
var challengeUser = [

    Challenge(title: "Fabrique tes produits ménagers", description: "Ton liquide vaisselle actuel n'est pas respectueux de l'environnement ? Change de cap, et fabrique tes propres produits ménagers.", members: 1, date: Date(), location: "Maison", theme: consommation, trophy: trophy[0], difficulty: .expert),
     Challenge(title: "Achète une brosse à dent en bambou", description: "Tu veux faire du bien à tes dents et à la planète ? Passe à la brosse à dents en bambou, c'est plus facile à recycler.", members: 1, date: Date(), location: "Maison", theme: consommation, experience: 20, difficulty: .novice),
     Challenge(title: "Rends toi dans une ferme pédagogique", description: "S'informer, c'est aussi s'engager ! Visite une ferme pédagogique pour en apprendre plus sur les circuits courts et la production locale.", members: 1, date: Date(), location: "Marseille", theme: sorties, experience: 30, difficulty: .intermediaire),
     Challenge(title: "Achète un produit bio", description: "Le bio c'est bon, c'est beau, et en plus c'est écolo. Rends toi en magasin et remplace un de tes produits quotidiens par son équivalent bio.", members: 1, date: Date(), location: "Marseille", theme: consommation, experience: 10, difficulty: .novice)

]

// Listes de challenges pour l'écran "Autour de moi"

var challengeZeroDechets: [Challenge] = [
    
    Challenge(title: "Ramasse tout", description: "Lors d'une balade en nature, ramassez les déchets humains", members: 5, date: Date(), location: "Où tu veux", theme: zeroDechets, experience: 20, difficulty: .novice, coordinate: CLLocationCoordinate2D(latitude: 48.854002, longitude: 2.382547)),
    
    Challenge(title: "Courses propres", description: "Fais tes courses avec tes propres sacs réutilisables et bocaux.", members: 1, date: Date(), location: "Paris", theme: zeroDechets, experience: 50, difficulty: .intermediaire, coordinate: CLLocationCoordinate2D(latitude: 48.847462, longitude: 2.387302)),
    
    Challenge(title: "Titre", description: "descritpion", members: 1, date: Date(), location: "Paris", theme: zeroDechets, experience: 1, difficulty: .novice, coordinate: CLLocationCoordinate2D(latitude: 48.851563, longitude: 2.398096))
    
]

var challengeEnergie: [Challenge] = [
    
    Challenge(title: "Change tes ampoules", description: "Choisis des ampoules basse consommation pour ta maison. Elles seront meilleures pour l'environnement, et pour ta facture d'électricité !", members: 1,date : Date(), location: "Maison", theme: energie, experience: 30, difficulty: .novice, coordinate: CLLocationCoordinate2D(latitude: 48.856341, longitude: 2.382580)),
    
    Challenge(title: "Découvre le solaire", description: "Viens en apprendre plus sur l'énergie solaire lors d'un atelier de présentation par SunPowerInc", members: 10, date: Date(), location: "Siège de SunPowerInc", theme: energie, experience: 50, difficulty: .intermediaire, coordinate: CLLocationCoordinate2D(latitude: 48.853243, longitude: 2.369786)),
    
    Challenge(title: "Adopte l'énergie solaire", description: "Tu t'intéresses au solaire et tu veux aller plus loin ? Achète une batterie solaire portable pour tes prochaines promenades.", members: 1, date: Date(), location: "Maison", theme: energie, experience: 100, difficulty: .expert, coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0))
    
]

var challengeConsommation: [Challenge] = [
    
    Challenge(title: "Fabrique ton propre sac de courses !", description: "Le plastique n'est pas ton ami, mais le tissu oui ! Tu as un vieux tshirt que tu n'utilises plus ? Transforme le en ton futur sac de courses, c'est plus pratique et écologique.", members: 1, date: Date(), location: "Maison", theme: consommation, experience: 50, difficulty: .expert, coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0)),
    
    Challenge(title: "Achète une brosse à dents en bambou", description: "Tu veux faire du bien à tes dents et à la planète ? Adopte une brosse à dents meilleur pour l'environnement.", members: 1, date: Date(), location: "Maison", theme: consommation, experience: 20, difficulty: .novice, coordinate: CLLocationCoordinate2D(latitude: 48.852545, longitude: 2.376869)),
    
    Challenge(title: "Adopte les circuits courts", description: "Mieux manger dans son assiette, c'est soutenir sa planète. Viens découvrir un producteur de ton quartier.", members: 1, date: Date(), location: "Epicerie la Main Verte", theme: consommation, experience: 50, difficulty: .intermediaire, coordinate: CLLocationCoordinate2D(latitude: 48.858588, longitude: 2.383562))
    
]

var challengeMobilite: [Challenge] = [
    Challenge(title: "Transports en communs", description: "Prends les transports en communs toute la journée.", members: 1, date : Date(), location: "Dans ta ville", theme: mobilite, experience: 30, difficulty: .novice, coordinate: CLLocationCoordinate2D(latitude: 48.850015, longitude: 2.385197)),
    
    Challenge(title: "Trajet en vélo", description: "Prends un vélo pour au moins un de tes trajets aujourd'hui.", members: 1, date: Date(), location: "Dans ta ville", theme: mobilite, experience: 30, difficulty: .novice, coordinate: CLLocationCoordinate2D(latitude: 48.852754, longitude: 2.384639)),
    
    Challenge(title: "Tout à pieds !", description: "Aujourd'hui utilise tes fidèles pieds pour te déplacer.", members: 1, date: Date(), location: "Dans ta ville", theme: mobilite, experience: 50, difficulty: .intermediaire, coordinate: CLLocationCoordinate2D(latitude: 48.850337, longitude: 2.378255))
]

var challengeSortiesEducatives: [Challenge] = [
    
    Challenge(title: "T'inscrire dans une asso", description: "Va t'inscrire dans une association qui s'occupe de l'environnement ", members: 1, date: Date(), location: "Dans ta ville", theme: sorties, experience: 150, difficulty: .expert, coordinate: CLLocationCoordinate2D(latitude: 48.839102, longitude: 2.371773))
]

var aroundMeChallenges: [Challenge] = [
    challengeZeroDechets[0], challengeZeroDechets[1], challengeZeroDechets[2],
    challengeEnergie[0], challengeEnergie[1], challengeEnergie[2],
    challengeConsommation[0], challengeConsommation[1], challengeConsommation[2],
    challengeMobilite[0], challengeMobilite[1], challengeMobilite[2],
    challengeSortiesEducatives[0]
]

