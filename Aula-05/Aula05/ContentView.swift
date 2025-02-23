//
//  ContentView.swift
//  Aula05
//
//  Created by Turma01-14 on 24/09/24.
//

import SwiftUI

struct Song: Hashable{
    var name: String
    var artist: String
    var capa : URL
}

var musicas = [
    Song(name: "LOST", artist: "Linkin Park", capa: URL(string: "https://images-na.ssl-images-amazon.com/images/I/81jFI+p-oLL._AC_UL600_SR600,600_.jpg")!),
    Song(name: "War", artist: "Filipe Ret", capa: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkafZSS0b-DUfKF-P-szYY8pJHRsvOzIio8A&s")!),
    Song(name: "Poesia Acústica #6 Era uma Vez", artist: "Linkin Park", capa: URL(string: "https://i.scdn.co/image/ab67616d0000b27306333cb20a0f8bad60f421f9")!),
    Song(name: "As lembranças Vão na mala", artist: "Natanzinho Lima", capa: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWlMkHnPqrNSeWYtUHaVL78fE2hVbpVzHEgA&s")!),
    Song(name: "Hipnose(Ao Vivo)", artist: "Calcinha Preta", capa: URL(string: "https://images.suamusica.com.br/2CHnM9A4ZemIbWt4ZeI9Qu4tJus=/240x240/filters:format(webp)/31293696/2235460/cd_cover.jpg")!),
    Song(name: "Pisando Descalço", artist: "Maneva", capa: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMh-g3CdgtOV33Iz5ltJZ3CDg9mT8X33wwrw&s")!),
    Song(name: "Se...", artist: "Djavan", capa: URL(string: "https://djavan.com.br/content/uploads/2018/11/ao_vivo.jpg")!),
    Song(name: "Saudades do Tempo", artist: "Maneva", capa: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMh-g3CdgtOV33Iz5ltJZ3CDg9mT8X33wwrw&s")!),
    Song(name: "Dias De Luta, Dias De Glória", artist: "Charlie Brown Jr.", capa: URL(string: "https://cultura.uol.com.br/upload/radio/chatmpb/20240609151450_imunidade-musical.jpg")!)
]

struct ContentView: View {
    var gradient = Gradient(colors: [Color("rosa"), Color("segunda")])
    var body: some View {
        NavigationStack{
                ZStack{
                    Rectangle()
                        .fill(LinearGradient(
                            gradient: gradient,
                            startPoint: .top,
                            endPoint: .bottom
                        ))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .edgesIgnoringSafeArea(.all)
                    ScrollView{
                    VStack{
                        AsyncImage(url: URL(string: "https://viagemegastronomia.cnnbrasil.com.br/wp-content/uploads/sites/5/2020/07/MorereBahia.jpg"), scale: 5)
                        Spacer()
                        Text("Melhor Playlist do Mundo :>")
                            .font(.system(size: 25))
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                            .padding(.top)
                            
                            
                        HStack{
                            AsyncImage(url: URL(string: "https://conteudo.imguol.com.br/c/entretenimento/a1/2021/01/14/dwayne-the-rock-johnson-1610629270810_v2_1x1.jpg"), scale: 60)
                            Text("Hebert Henrique")
                                .font(.headline)
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                            Spacer()
                        }.padding()
                        ForEach(musicas, id: \.self) { musica in
                            NavigationLink(destination: Play(musica2: musica)){
                                HStack{
                                    AsyncImage(url: musica.capa) { image in
                                        image.resizable()
                                            .frame(width: 50, height: 50)
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    VStack(alignment: .leading){
                                        
                                        Text(musica.name)
                                            .foregroundColor(.white)
                                            
                                        Text(musica.artist)
                                            .foregroundColor(.white)
                                            .font(.caption2)
                                        
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                        .padding()
                                }.padding(.leading)
                            }
                        }
                    }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
