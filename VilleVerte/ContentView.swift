//
//  ContentView.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 04/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    let attrs = [
        NSAttributedString.Key.foregroundColor: UIColor.white
    ]
    
    var body: some View {
        TabView {
            Today()
                .tabItem {
                    Image(systemName: "target")
                    Text("Aujourd'hui")
                }
            AroundMe()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Autour de moi")
                }
            Profile()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profil")
                }
        }
        .onAppear {
            UINavigationBar.appearance().barTintColor = .clear
            UINavigationBar.appearance().backgroundColor = .clear
            UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
            UINavigationBar.appearance().shadowImage = UIImage()
            UINavigationBar.appearance().titleTextAttributes = attrs
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
