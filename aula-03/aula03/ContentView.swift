//
//  ContentView.swift
//  aula03
//
//  Created by Turma01-14 on 20/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var peso: Float = 0
    @State var altura: Float = 0
    @State var backgroundColor: Color = .white
    @State var imc: Float = 0
    @State var estado: String = ""
    var body: some View {
        ZStack{
            VStack {
                Text("Calculadora de IMC").font(.title)
                
                TextField("Digite seu peso:", value: $peso, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 20)
                    .textFieldStyle(.roundedBorder)
            
                TextField("Digite sua altura:", value: $altura, formatter: NumberFormatter())
                    .padding(.horizontal, 40)
                    .textFieldStyle(.roundedBorder)
                
                Button(action: calculo) {
                    Text("Calcular")
                }.buttonStyle(.borderedProminent).padding()
                
                Spacer()
                
                Text(estado).font(.title2)
                Spacer()
                Image("imc")
                    .resizable()
                    .frame(width: 400, height: 200)
            }
        }
        .background(backgroundColor)
    }
    func calculo() {
        imc = (peso/(altura*altura))
        
        if (imc < 18.5){
            estado = "Baixo peso"
            backgroundColor = Color("baixo")
        }else if (imc > 18.5 && imc < 24.99){
            estado = "Normal"
            backgroundColor = Color("Normal")
        }else if (imc > 25 && imc < 29.99){
            estado = "Sobrepeso"
            backgroundColor = Color("sobrepeso")
        }else if (imc > 30){
            estado = "Obesidade"
            backgroundColor = Color("obesidade")
        }
    }
}

#Preview {
    ContentView()
}
