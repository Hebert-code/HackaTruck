//
//  Play.swift
//  Aula05
//
//  Created by Turma01-14 on 24/09/24.
//

import SwiftUI

struct Play: View {
    let musica2: Song
    var gradient = Gradient(colors: [Color("rosa"), Color("segunda")])
    var body: some View {
        ZStack{
            Rectangle()
                .fill(LinearGradient(
                    gradient: gradient,
                    startPoint: .top,
                    endPoint: .bottom
                ))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack{
                AsyncImage(url: musica2.capa) { image in
                    image.resizable()
                        .frame(width: 200, height: 200)
                } placeholder: {
                    ProgressView()
                }
                Text(musica2.name)
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.medium)
                Text(musica2.artist)
                    .foregroundColor(.white)

                    .padding(.bottom, 80)
                HStack{
                    Image(systemName: "shuffle")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .padding()
                        
                    Image(systemName: "backward.end.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .padding()
                    
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 45))
                        .padding()
                    
                    Image(systemName: "forward.end.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .padding()
                    
                    Image(systemName: "repeat")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .padding()
                    
                }
            }

        }
    }
}

#Preview {
    Play(musica2: Song(name: "Hebert", artist: "Hebert", capa: URL(string: "https://images-na.ssl-images-amazon.com/images/I/81jFI+p-oLL._AC_UL600_SR600,600_.jpg")!))
}
