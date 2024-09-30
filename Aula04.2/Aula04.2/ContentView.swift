//
//  ContentView.swift
//  Aula04.2
//
//  Created by Turma01-14 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Rectangle()
                    .fill(Color.darkblue)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 300, height: 150)
                    Spacer()
                    
                    NavigationLink(destination: modo1()) {
                        Text("Modo 1")
                    }.frame(width: 250, height: 80)
                        .background(.pink)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    
                    
                    NavigationLink(destination: mode2()) {
                        Text("Modo 2")
                    }.frame(width: 250, height: 80)
                        .background(.pink)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)

                    Button("Modo 3") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.frame(width: 250, height: 80)
                        .background(.pink)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    
                    Spacer()

                }

            }
        }
    }

}

#Preview {
    ContentView()
}
