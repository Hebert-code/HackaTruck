//
//  ViewModel.swift
//  Aula07
//
//  Created by Turma01-14 on 27/09/24.
//

import Foundation

class ViewModel: ObservableObject{
    @Published var chars : [Personagem] = []
    
    func fetch(){
        
        let task = URLSession.shared.dataTask(with: URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor")!){data, _,error in
        
            do{
                self.chars = try JSONDecoder().decode([Personagem].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
