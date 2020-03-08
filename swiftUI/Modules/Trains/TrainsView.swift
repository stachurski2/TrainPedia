import SwiftUI

struct TrainsView: View {
    
    @Binding var isActive:Bool
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        List {
            Toggle(isOn: $userData.showFavoritesOnly ) {
                Text("Favorites only")
            }
            ForEach(userData.trains) { train in
                if !self.userData.showFavoritesOnly == false || train.isFavorited {
                    NavigationLink(destination: TrainDetailsView(train: train),
                                   label: {
                        TrainRow(train: train)})
                        }
                 }
            
        }

            .navigationBarTitle(Text("Trains")).foregroundColor(.blue)
    }
    
}


