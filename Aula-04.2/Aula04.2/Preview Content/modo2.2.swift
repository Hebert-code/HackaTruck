//
//  modo2.2.swift
//  Aula04.2
//
//  Created by Turma01-14 on 23/09/24.
//

import SwiftUI

struct modo2_2: View {
    var body: some View {
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
                    Text("Volte, Hebert!!")
                }.frame(width: 160, height: 80)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .cornerRadius(8)
                Spacer()
            }
        }
    }
}

#Preview {
    modo2_2()
}
