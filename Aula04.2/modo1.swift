//
//  modo1.swift
//  Aula04.2
//
//  Created by Turma01-14 on 23/09/24.
//

import SwiftUI

struct modo1: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.darkblue)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Text("Modo 1")
                    .foregroundColor(.white)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                Spacer()
                VStack{
                    Text("Nome: Hebert")
                    Text("Sobrenome: Brito")
                }.frame(width: 200, height: 100)
                    .background(Color.pink)
                    .cornerRadius(10.0)
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
}

#Preview {
    modo1()
}
