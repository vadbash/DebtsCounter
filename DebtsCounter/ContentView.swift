import SwiftUI

struct WelcomeView: View {
    var body: some View {
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
                
                Button(action: {
                    print("Login into session tapped")
                }) {
                    Text("Login into session")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(Color.black.opacity(0.3))
                        .cornerRadius(10)
                        .padding(.horizontal, 40)
                }
                Button(action: {
                    print("Create session tapped")
                }) {
                    Text("Create session")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(Color.black.opacity(0.3))
                        .cornerRadius(10)
                        .padding(.horizontal, 40)
                }

                Spacer()
            }
            .padding(.top, 100)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
