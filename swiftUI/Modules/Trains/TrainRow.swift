
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
              if train.isFavorited {
                Image("marked_star")
               } else {
                Image("unmarked_star")
            }

//            Button(action: {
//               }) { () -> PrimitiveButtonStyleConfiguration.Label in
//
//               }
//            }

        }
    }
}



#if DEBUG

struct TrainRow_Previews: PreviewProvider {
        static var previews: some View {
            TrainRow(train: TrainProvider.sharedInstance.trains[0])

        }
}

#endif
