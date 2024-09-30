import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()

    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack {
                        AsyncImage(url: URL(string:"https://upload.wikimedia.org/wikipedia/commons/c/cd/Hogwarts_%2829353868725%29.jpg")!) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(height: 200)
                                .clipped()
                        } placeholder: {
                            ProgressView()
                                .frame(height: 200)
                        }
                        
                        ForEach(viewModel.chars, id: \.id) { character in
                            NavigationLink(destination: Abriu(personagem: character)) {
                                HStack {
                                    AsyncImage(url: URL(string: character.image ?? "")) { image in
                                        image
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 90, height: 90)
                                            .background(Color.gray)
                                            .clipShape(Circle())
                                    } placeholder: {
                                        ProgressView()
                                            .frame(width: 90, height: 90)
                                            .background(Color.gray)
                                            .clipShape(Circle())
                                    }
                                    Text(character.name ?? "N/A")
                                        .font(.title3)
                                        .foregroundColor(.white)
                                        .padding(.leading, 8)
                                    Spacer()
                                }
                                .padding()
                                .background(Color.red.opacity(0.5))
                                .cornerRadius(10)
                            }
                        }
                    }
                }
            }
            .background(Color.corDeFundo)
            .edgesIgnoringSafeArea(.all)
        }
        .onAppear {
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
