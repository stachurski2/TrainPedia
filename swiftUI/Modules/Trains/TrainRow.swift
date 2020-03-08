
import SwiftUI

struct TrainRow: View {
    
    var train:Train
    
    var body: some View {
        HStack(alignment: .center, spacing: 5.0) {
            Image(train.imageName).resizable().aspectRatio(contentMode: .fit).frame(width: 200)
                .cornerRadius(25)
                .overlay(
                    RoundedRectangle(cornerRadius: 25).stroke(Color.gray, lineWidth: 4)
                )
                .padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15))

            Text(train.name)
            Spacer()
            if train.isFavorited {
               Image("marked_star")
            } else {
               Image("unmarked_star")
           }
        }
    }
}



