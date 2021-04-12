//
//  UserDataVilleList.swift
//  VilleVerte
//
//  Created By Kevin MASLOWSKI on 08/11/2020.
//

import SwiftUI

struct UserDataVilleList: View {
    
    @State var colorIndex: Color = Color.black
    @State var defaultColorBackground: Color = Color.white
    
    @Binding var selectedTagName: String
    
    var switchArrayOnTag: [User] {
        if selectedTagName == "ville" {
            return userDataVille
        } else {
            return userDataAmi
        }
    }
    
    var body: some View {
        
        List (Array(zip(switchArrayOnTag.indices, switchArrayOnTag)), id: \.0) {index, user in
            
            if user.username == switchArrayOnTag[0].username {
                
                HStack {
                    Spacer()
                    VStack {
                        Image("\(user.photo)")
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 100, height: 100)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .padding()
                        Text("#\(index+1)")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.noviceButton)
                        Text(user.username)
                            .font(.system(size: 15))
                        Text("\(user.experience) points")
                            .foregroundColor(.secondary)
                            .font(.system(size: 15))
                        Image.init(user.rank.rawValue)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40.0)
                            .padding()
                        
                    }
                    Spacer()
                }
            }
            
            else {
                HStack {
                    UserDataVilleRow(user: user, indexUser: index+1)
                }
                .background(defaultColorBackground)
            }
        }
    }
}



struct UserDataVilleList_Previews: PreviewProvider {
    static var previews: some View {
        UserDataVilleList( selectedTagName: .constant("ville"))
    }
}


