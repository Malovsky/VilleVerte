//
//  UserDataVilleRow.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 08/11/2020.
//

import SwiftUI

struct UserDataVilleRow: View {
    
    var user: User
        
    @State var defaultColor = Color.white
    
    @State var colorName = Color.black
    
    @State var colorExperience = Color.secondary
        
    var indexUser: Int
    
    func isConnected (user: User) {
        if user.username == currentUser.username {
                        defaultColor = Color.myYellow
                        colorName = Color.white
                        colorExperience = Color.white
        } else {
            defaultColor = Color.white
            colorName = Color.black
            colorExperience = Color.secondary
        }
        
        
    }
    
    var body: some View {
        
        HStack {
            Text("#\(indexUser)")
                .foregroundColor(colorName)
            Image("\(user.photo)")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 30.0, height: 30.0)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack (alignment: .leading){
                Text("\(user.username)")
                    .foregroundColor(colorName)
                Text("\(user.experience) points")
                    .foregroundColor(colorExperience)
                    .font(.system(size: 15))
            }
            .frame(height: 60)
            Spacer()
            Image.init(user.rank.rawValue)
                .resizable()
                .scaledToFit()
                .frame(height: 30.0)
        }
        .background(defaultColor)
        .onAppear{
            isConnected(user: user)
        }
        
    }
}


struct UserDataVilleRow_Previews: PreviewProvider {
    static var previews: some View {
        UserDataVilleRow(user: User(username: "JFranco", photo: "JFranco", experience: 895, rank: .roseauFlexible), indexUser: 1)
    }
}

