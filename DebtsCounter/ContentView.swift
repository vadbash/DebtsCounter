import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.blue, Color.purple]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack(spacing: 30) {
                    Image("logo")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .shadow(radius: 10)

                    Text("DebtsCounter")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)

                    Text("Split expenses. Track spending. Stay friends.")
                        .font(.headline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)

                    Spacer()

                    VStack(spacing: 20) {
                        NavigationLink(destination: TwoPersonSessionView()) {
                            Text("Start Session for 2 People")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.black.opacity(0.3))
                                .cornerRadius(10)
                                .padding(.horizontal, 40)

                        }

                        NavigationLink(destination: GroupSessionView()) {
                            Text("Start Group Session (3+)")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.black.opacity(0.3))
                                .cornerRadius(10)
                                .padding(.horizontal, 40)


                        }
                    }

                    Spacer()
                    Text("© vadbash")
                        .foregroundColor(.white.opacity(0.7))
                        .font(.footnote)
                        .padding(.bottom, 30)
                }
                .padding(.top, 100)
            }
        }
    }
}





struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
