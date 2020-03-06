import SwiftUI

struct TrainsView: View {
    @Binding var isActive: Bool

    var trains:[Train]

    var body: some View {
        List(trains) { train in
            TrainRow(train: train)
            }.navigationBarItems(leading: Button(action: { self.isActive = false }, label: { Text("Back") })).navigationBarTitle(Text("Trains")).foregroundColor(.blue)
        
    }
}

