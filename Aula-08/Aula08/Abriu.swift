//
//  Abriu.swift
//  Aula08
//
//  Created by Turma01-14 on 30/09/24.
//

import SwiftUI

struct Abriu: View {
    let coin: Coin
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.fundo)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
                .ignoresSafeArea(.all)
                

            VStack(alignment: .center) {
                Text(coin.name ?? "N/A")
                    .font(.largeTitle)
                    .padding(.bottom, 10)
                    .foregroundColor(.orange)
                
                if let imageUrl = coin.image, let url = URL(string: imageUrl) {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    } placeholder: {
                        ProgressView()
                    }
                    .padding(.bottom, 10)
                }
                
                Text("Símbolo: \(coin.symbol?.uppercased() ?? "N/A")")
                    .font(.title2)
                    .padding(.bottom, 5)
                    .foregroundColor(.orange)
                    .padding()
                
                if let currentPrice = coin.currentPrice {
                    Text("Preço Atual: $\(String(format: "%.2f", currentPrice))")
                        .font(.title3)
                        .padding(.bottom, 5)
                        .foregroundColor(.white)
                }
                
                if let marketCap = coin.marketCap {
                    Text("Market Cap: $\(String(format: "%.2f", marketCap))")
                        .font(.title3)
                        .padding(.bottom, 5)
                        .foregroundColor(.white)
                        
                }
                
                if let totalVolume = coin.totalVolume {
                    Text("Volume Total: $\(String(format: "%.2f", totalVolume))")
                        .font(.title3)
                        .padding(.bottom, 5)
                        .foregroundColor(.white)
                }
                
                if let priceChangePercentage = coin.priceChangePercentage24h {
                    Text("Mudança 24h: \(String(format: "%.2f", priceChangePercentage))%")
                        .font(.title3)
                        .foregroundColor(priceChangePercentage >= 0 ? Color.green : Color.red)
                        .padding()
                        .foregroundColor(.white)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Detalhes da Moeda")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Detalhes da Moeda")
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

struct Abriu_Previews: PreviewProvider {
    static var previews: some View {
        let sampleCoin = Coin(
            id: nil,
            symbol: nil,
            name: nil,
            currentPrice: nil,
            marketCap: nil,
            totalVolume: nil,
            priceChangePercentage24h: nil,
            image: nil,
            high24h: nil,
            low24h: nil,
            priceChange24h: nil,
            marketCapRank: nil
        )
        
        Abriu(coin: sampleCoin)
            .previewLayout(.sizeThatFits)
            .padding()
            .preferredColorScheme(.dark) // Ajuste para o modo escuro, se necessário
    }
}
