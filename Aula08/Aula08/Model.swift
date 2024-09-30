//
//  Model.swift
//  Aula08
//
//  Created by Turma01-14 on 30/09/24.
//

import Foundation

// Coin.swift
struct Coin: Decodable, Identifiable {
    let id: String?
        let symbol: String?
        let name: String?
        let currentPrice: Double?
        let marketCap: Double?
        let totalVolume: Double?
        let priceChangePercentage24h: Double?
        let image: String?
        let high24h: Double?
        let low24h: Double?
        let priceChange24h: Double?
        let marketCapRank: Int?
        
        enum CodingKeys: String, CodingKey {
            case id, symbol, name
            case currentPrice = "current_price"
            case marketCap = "market_cap"
            case totalVolume = "total_volume"
            case priceChangePercentage24h = "price_change_percentage_24h"
            case high24h = "high_24h"
            case low24h = "low_24h"
            case priceChange24h = "price_change_24h"
            case marketCapRank = "market_cap_rank"
            case image
        }
}
