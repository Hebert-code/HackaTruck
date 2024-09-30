//
//  Model.swift
//  Aula07
//
//  Created by Turma01-14 on 27/09/24.
//

import Foundation

struct Personagem: Decodable, Identifiable {
    let id: String?
    let name: String?
    let alternateNames: [String]?
    let species: String?
    let gender: String?
    let house: String?
    let dateOfBirth: String?
    let image: String?
}
