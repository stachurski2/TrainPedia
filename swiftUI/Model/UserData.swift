
import SwiftUI
import Combine

final class UserData: ObservableObject  {
    
    @Published var showFavoritesOnly = true
    @Published var trains:[Train]
    
    init() {
        trains = TrainProvider.sharedInstance.trains
    }
}
