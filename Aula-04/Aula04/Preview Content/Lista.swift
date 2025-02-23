//
//  Lista.swift
//  Aula04
//
//  Created by Turma01-14 on 23/09/24.
//

import SwiftUI

struct Lista: View {
    var body: some View {
        VStack{
            Text("List")
            List{
                HStack{
                    Text("Item ")
                    Spacer()
                    Image(systemName: "paintbrush.fill")
                }
                HStack{
                    Text("Item ")
                    Spacer()
                    Image(systemName: "paintbrush.pointed.fill")

                }
                HStack{
                    Text("Item ")
                    Spacer()
                    Image(systemName: "paintpalette.fill")
                }
            }
        }.edgesIgnoringSafeArea(.all)
        .padding(.bottom, 5)
    }
}

#Preview {
    Lista()
}
