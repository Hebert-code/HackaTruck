//
//  mode2.swift
//  Aula04.2
//
//  Created by Turma01-14 on 23/09/24.
//

import SwiftUI

struct mode2: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .fill(Color.darkblue)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack{
                    Text("Modo 2")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Spacer()
                    VStack{
                        Text("Hebert")
                            .padding()
                        Text("Bem-Vindo, Hebert")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Spacer()
                        NavigationLink(
                            destination: modo2_2()){
                                Text("Acessar Tela")
                            }
                            .frame(width: 120, height: 40)
                            .background(Color.blue)
                            .cornerRadius(6.0)
                            .padding()
                    }.frame(width: 250, height: 150)
                        .foregroundColor(.white)
                        .background(Color.pink)
                        .cornerRadius(10.0)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    mode2()
}
