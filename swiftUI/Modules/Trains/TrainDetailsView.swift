import SwiftUI

struct TrainDetailsView: View {

    @EnvironmentObject var userData: UserData
    var train: Train

    var trainIndex: Int {
        userData.trains.firstIndex(where: { $0.id == train.id })!
    }

    var body: some View {
    ScrollView {
        VStack(alignment: .center, spacing: 5.0) {
                Image(self.train.imageName).resizable().aspectRatio(contentMode: .fit).cornerRadius(50)
                    .frame(minWidth: 0, maxWidth: .infinity).overlay(
                        RoundedRectangle(cornerRadius: 50).stroke(Color.gray, lineWidth: 4)
                    )
                    .padding(EdgeInsets(top: 30, leading: 30, bottom: 30, trailing: 30))
                HStack(alignment: .center) {
                    
                    Text(train.name).font(.system(size: 50)).foregroundColor(.black)
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    .background(Color.white).overlay(
                    RoundedRectangle(cornerRadius: 50).stroke(Color.gray, lineWidth: 4))
                }.background(Color.red)
                Spacer()

            Button(action: {
                self.userData.trains[self.trainIndex].isFavorited.toggle()
            }) {
                if self.userData.trains[self.trainIndex].isFavorited {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                } else {
                    Image(systemName: "star")
                        .foregroundColor(Color.gray)
                }
            }
                Spacer()
            Text(NSLocalizedString("lorem_ipsum", comment: "")).foregroundColor(.black).padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
            }.transformEffect(CGAffineTransform(translationX: 0, y: -100))
        }
    }

}
