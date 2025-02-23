//
//  ContentView.swift
//  Aula08
//
//  Created by Turma01-14 on 30/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel() // Instanciando a ViewModel

    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .fill(Color.fundo)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
                    .ignoresSafeArea(.all)
                    
                ScrollView{
                    Text("Criptomoedas")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                    ForEach(viewModel.chars, id: \.id){ coin in
                        NavigationLink(destination: Abriu(coin:coin)){
                            HStack{
                                if let imageUrl = coin.image, let url = URL(string: imageUrl) {
                                    AsyncImage(url: url) { image in
                                        image
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 40, height: 40)
                                    } placeholder: {
                                        ProgressView()
                                    }.padding()
                                    HStack{
                                        VStack(alignment: .leading){
                                            Text(coin.name ?? "N/A")
                                                .font(.headline)
                                                .foregroundColor(.white)
                                            Text(coin.symbol?.uppercased() ?? "N/A")
                                                .font(.subheadline)
                                                .foregroundColor(.orange.opacity(0.8))
                                        }
                                        Spacer()
                                        VStack(alignment: .trailing){
                                            if let priceChangePercentage = coin.priceChangePercentage24h {
                                                Text("\(String(format: "%.2f", priceChangePercentage))%")
                                                    .font(.title3)
                                                    .foregroundColor(priceChangePercentage >= 0 ? Color.green : Color.red)
                                            }
                                            if let currentPrice = coin.currentPrice {
                                                Text("$\(String(format: "%.2f", currentPrice))")
                                                    .font(.subheadline)
                                                    .foregroundColor(.white)
                                            }
                                        }.padding()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetch() // Chama a função fetch ao aparecer a view
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
