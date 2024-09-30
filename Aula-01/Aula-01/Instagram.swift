//
//  Instagram.swift
//  Aula-01
//
//  Created by Turma01-14 on 18/09/24.
//

import SwiftUI

struct Instagram: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack(){
                Image("im1")
                    .resizable()
                    .frame(width: 120,height: 120)
                    .cornerRadius(80)
                    .padding(.horizontal, 9)
                VStack{
                    HStack{
                        VStack{
                            Text("8")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("posts")
                        }
                        VStack{
                            Text("12k")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("followers")
                        }
                        VStack{
                            Text("8")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("following")
                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                    Button {
                        
                    } label:{
                        Text("Editar Perfil")
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    }.padding(.horizontal, 8)
                    .buttonStyle(.bordered)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
            
                }
            }
            VStack(alignment: .leading){
                Text("Vale Turismo")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("Belas paisagens do Vale ❤️ 🥭")
                    .font(.caption)
            }.padding(.vertical, 10).padding(.horizontal,10)
            
            HStack{
                Image(systemName: "square.grid.3x3.fill")
                Spacer()
                Image(systemName: "play.square")
                Spacer()
                Image(systemName: "person.fill")
            }
            .padding(.horizontal, 40)
            .padding(.vertical, 10)
            
            HStack(alignment: .top){
               Image("im1")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("im2")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("im3")
                    .resizable()
                    .frame(width: 120, height: 120)
            }
            HStack{
                Image("im4")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("im5")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("im2")
                    .resizable()
                    .frame(width: 120, height: 120)
            }
            HStack{
                Image("im4")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("im5")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("im2")
                    .resizable()
                    .frame(width: 120, height: 120)
            }
            
        }
        
    }
}

#Preview {
    Instagram()
}
