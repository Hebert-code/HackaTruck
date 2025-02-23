//
//  ContentView.swift
//  aula02
//
//  Created by Turma01-14 on 19/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var nome: String = ""
    @State private var alerta: Bool = false
    var body: some View {
        ZStack{
            Image("hackatruck")
                .frame(width: 300,height: 300)
                .blur(radius: 6.0)
                .opacity(0.4)
            
            VStack(alignment: .center){
                Text("Bem vindo, \(nome)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                TextField("Digite seu nome",text: $nome).multilineTextAlignment(.center)
                Spacer()
                Image("logo")
                    .resizable()
                    .frame(width: 250, height: 100)
                Image("truck")
                    .resizable()
                    .frame(width: 250, height: 100)
                Spacer()
                Button("Entrar") {
                    alerta = true
                }.padding()
                
                .alert(isPresented: $alerta){
                        Alert(
                            title: Text("Alerta"),
                            message: Text("Voce irá iniciar o desafio da aula agora"),
                            dismissButton: .default(Text("Vamos lá!"))
                        )
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
