import SwiftUI

struct TrainsView: View {
    
    @Binding var isTrainsViewActive:Bool
    @State var showFavoritesOnly: Bool = false
    @EnvironmentObject var userData: UserData
    @State var isTrainsDetailViewActive:Bool = false
    
    
    
    var body: some View {
        List {
            Toggle(isOn: self.$showFavoritesOnly ) {
                Text("Favorites only")
            }
            ForEach(userData.trains) { train in
                if self.showFavoritesOnly == false || train.isFavorited {
                    TrainRow(train: train).gesture(TapGesture().onEnded({ _ in
                        self.isTrainsDetailViewActive = true
                    })).sheet(isPresented: self.$isTrainsDetailViewActive) {
                        TrainDetailsView(train: train, userData: self._userData)
                    }
                 }
            
        }.navigationBarTitle(Text("Trains")).foregroundColor(.blue)
    }
    }

    
}



struct TrainsView_Previews: PreviewProvider {
    @State static var isTrainsViewActive: Bool = true

    static var previews: some View {

        TrainsView(isTrainsViewActive: self.$isTrainsViewActive,
                   showFavoritesOnly: false).environmentObject(UserData())
    }
}
