import SwiftUI

struct Abriu: View {
    let personagem: Personagem
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: personagem.image ?? "")) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .clipped()
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
                    .frame(height: 300)
            }
            
            Text(personagem.name ?? "N/A")
                .font(.largeTitle)
                .padding()
            
            if let house = personagem.house {
                Text("Casa: \(house)")
                    .font(.title2)
            }
            
            if let species = personagem.species {
                Text("Espécie: \(species)")
                    .font(.title2)
            }
            
            if let gender = personagem.gender {
                Text("Gênero: \(gender)")
                    .font(.title2)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Detalhes")
        .background(Color.corDeFundo) // Ajuste a cor de fundo conforme necessário\
        .foregroundColor(.white)
    }
}
