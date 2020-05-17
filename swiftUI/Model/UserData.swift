
import SwiftUI
import Combine

final class UserData: ObservableObject  {
    
    var trains:[Train]
    
    init() {
        trains = TrainProvider.sharedInstance.trains
    }
    
    
    
}
