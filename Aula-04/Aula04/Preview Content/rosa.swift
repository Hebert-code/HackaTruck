//
//  rosa.swift
//  Aula04
//
//  Created by Turma01-14 on 23/09/24.
//

import SwiftUI

struct rosa: View {
    @State private var cor: Color = .pink
    var body: some View {
        VStack{
            Image(systemName: "paintbrush")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .font(.system(size: 200))
            
        }
        .background(cor)
        .edgesIgnoringSafeArea(.all)
        .padding(.bottom, 5)
    }
}

#Preview {
    rosa()
}
