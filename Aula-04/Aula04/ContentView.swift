//
//  ContentView.swift
//  Aula04
//
//  Created by Turma01-14 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            TabView{
                rosa()
                    .tabItem {
                        Label("Rosa", systemImage: "paintbrush.fill")
                    }.edgesIgnoringSafeArea(.leading)
                Azul()
                    .tabItem {
                        Label("Azul", systemImage: "paintbrush.pointed.fill")
                    }
                Cinza()
                    .tabItem {
                        Label("Cinza", systemImage: "paintpalette.fill")
                    }
                Lista()
                    .tabItem {
                        Label("Lista", systemImage: "list.bullet")
                    }
            }
        }
    }
}


#Preview {
    ContentView()
}
