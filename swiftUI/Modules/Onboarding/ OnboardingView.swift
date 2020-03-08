import SwiftUI

struct OnboardingView: View {
    
    @EnvironmentObject var data:UserData
    var body: some View {
        NavigationView {
            OnboardingInnerView()
                .environmentObject(data)
                .transformEffect(CGAffineTransform(translationX: 0, y: -40))
        }
    }
}

struct OnboardingInnerView: View {
    
    @EnvironmentObject var data:UserData

    @State var isActive = false
    private let kStandardInset: CGFloat = 25.0

    var body: some View {
        VStack(alignment: .center, spacing: 5.0, content: {
            Text("TrainPedia")
                .font(.system(size: 50))
                .padding(EdgeInsets(top: 0, leading: 0, bottom: kStandardInset, trailing: 0))
                        Image("onboardingImage")
                            .resizable(capInsets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0),
                                       resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle()).padding(.horizontal, 15.0)
                            .rotationEffect(Angle(degrees: 45))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: kStandardInset, trailing: 0))
                            Divider()
                            Text("I am not machine!")
                                .padding(EdgeInsets(top: kStandardInset, leading: 0, bottom: 0, trailing: 0))
                            Text("I am more!")
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: kStandardInset, trailing: 0))
                            Divider()
            NavigationLink(destination: TrainsView(isActive: self.$isActive).environmentObject(self.data),
                           isActive: $isActive,
                           label: {
                                Button(action: {
                                    self.isActive = true
                                }, label: { Text("Proceed")})
                                    .frame(height: 50)
                                    .padding(EdgeInsets(top: 0, leading: kStandardInset, bottom: 0, trailing: kStandardInset))
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(25)
            }).padding(EdgeInsets(top: kStandardInset, leading: 0, bottom: 0, trailing: 0))
    })
    }
}
///  Present
//                Button(action: { self.isActive = true }, label: { Text("click") }).sheet(isPresented: $isActive) {
//                    TrainsView(isActive: self.$isActive, trains: TrainProvider.sharedInstance.trains)
//                }
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingInnerView()
    }
}

