//
//  SwiftUIView.swift
//  Aula-01
//
//  Created by Turma01-14 on 18/09/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        HStack{
            
            Image("hackatruck")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 120,height: 120, alignment: .center)
                .cornerRadius(80)
                .padding(.leading, 40)
            Spacer()
            VStack{
                Text("Hackatruck")
                .foregroundStyle(.red)
                Text("77 Universidades")
                    .foregroundStyle(.blue)
                Text("5 regiões do Brasil")
                    .foregroundStyle(.yellow)
            }.padding(20)
        }
    }
}

#Preview {
    SwiftUIView()
}
