import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: URL
    let description: String
}

let locais = [
    Location(name: "Brasil",
             coordinate: CLLocationCoordinate2D(latitude: -9.4255, longitude: -40.5037),
             flag: URL(string: "https://media.istockphoto.com/id/967321044/pt/vetorial/vector-flag-of-brazil-proportion-7-10-brazilian-national-flag.jpg?s=612x612&w=0&k=20&c=I9XD62PJyxBHjCpIKqy9OLCNALQbX7caMOrneStVK0M=")!,
             description: "Juazeiro, na Bahia, e Petrolina, em Pernambuco, são cidades gêmeas separadas pelo Rio São Francisco. Juazeiro é conhecida por sua produção de frutas e cultura nordestina, enquanto Petrolina se destaca na irrigação e fruticultura. Juntas, elas formam um importante polo econômico e cultural no semiárido brasileiro, atraindo turistas e investidores, com eventos como a Festa do Vinho e o São João."),
    Location(name: "Estados Unidos",
             coordinate: CLLocationCoordinate2D(latitude: 38.8951, longitude: -77.0364),
             flag: URL(string: "https://static.mundoeducacao.uol.com.br/mundoeducacao/2022/05/bandeira-estados-unidos.jpg")!,
             description: "Os Estados Unidos, localizados na América do Norte, são uma república federal composta por 50 estados e um distrito federal, Washington, D.C. Com uma população diversa e uma economia robusta, o país se destaca em tecnologia, finanças e entretenimento. Famosos por suas belezas naturais, como as Montanhas Rochosas e as praias da Califórnia, os EUA também exercem grande influência cultural, especialmente na música e no cinema. Além disso, desempenham um papel importante em questões políticas e sociais no cenário internacional."),
    Location(name: "Canadá",
             coordinate: CLLocationCoordinate2D(latitude: 43.6589, longitude: -79.347015),
             flag: URL(string: "https://s3.static.brasilescola.uol.com.br/be/2022/10/bandeira-do-canada.jpg")!,
             description: "Toronto é a maior cidade do Canadá e um importante centro cultural e financeiro da América do Norte. Conhecida por sua diversidade étnica, a cidade oferece uma rica cena gastronômica e cultural, além de marcos icônicos como a CN Tower. Com espaços verdes como o High Park e as Ilhas de Toronto, a cidade combina vida urbana com natureza. Toronto é um destino atraente, com oportunidades em diversos setores e uma vibrante oferta de entretenimento.")
]

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -9.3949, longitude: -40.5037),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    @State private var selectedLocation: Location?
    @State private var showingSheet = false

    var body: some View {
        ZStack {
            VStack {
                Map(coordinateRegion: $region, annotationItems: locais) { local in
                    MapAnnotation(coordinate: local.coordinate) {
                        Button(action: {
                            selectedLocation = local
                            showingSheet.toggle()
                        }) {
                            Image(systemName: "pin.fill")
                                .foregroundColor(.blue)
                                .font(.title)
                        }
                    }
                }
                .ignoresSafeArea()
            }
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color.white)
                        .frame(maxWidth: .infinity, maxHeight: 180)
                        .opacity(0.8)
                        .ignoresSafeArea()
                    
                    VStack {
                        Text("World map")
                            .fontWeight(.bold)
                            .font(.title)
                        Text(selectedLocation?.name ?? "")
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                            .padding(.bottom, 40)
                    }
                }
                Spacer()
                HStack(alignment: .center) {
                    ForEach(locais) { loc in
                        Button(action: {
                            selectedLocation = loc
                            region.center = loc.coordinate
                        }) {
                            AsyncImage(url: loc.flag) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                            } placeholder: {
                                ProgressView()
                            }
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $showingSheet) {
            if let location = selectedLocation {
                VStack {
                    Text(location.name)
                        .font(.largeTitle)
                        .padding()
                    Spacer()
                    AsyncImage(url: location.flag) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                    } placeholder: {
                        ProgressView()
                    }
                    Spacer()
                    Text(location.description)
                        .padding()
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
