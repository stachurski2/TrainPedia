import SwiftUI

struct TrainsView: View {
    @Binding var isActive:Bool

//    @State var showFavoritesOnly = true
//    @State var showDetails = false

    @EnvironmentObject var userData: UserData

    var body: some View {
        List {
            Toggle(isOn: $userData.showFavoritesOnly ) {
                Text("Favorites only")
            }
            ForEach(userData.trains) { train in
                if !self.userData.showFavoritesOnly == false || train.isFavorited {
                    NavigationLink(destination: TrainDetailsView(train: train), label: {
                        TrainRow(train: train)})
                        }
                 }
            
        }
//        .navigationBarItems(leading: Button(action: { self.isActive = false }, label: {
//            Text("Back")
//        }))
            .navigationBarTitle(Text("Trains")).foregroundColor(.blue).onDisappear {
                print("ContentView disappeared!")
            }
    }
    
}


