import SwiftUI

struct LoginGroupSessionView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
                    Color(red: 1/255, green: 114/255, blue: 114/255, opacity: 1.0)
                    ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            Button(action: {
                dismiss()}) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.gray)
                    .font(.system(size: 24, weight: .bold))
                    .padding(.leading, 36)
                    .padding(0)}

            VStack(spacing: 40) {
                Image("logo")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .shadow(radius: 20)
                    .padding(.top, 60)

                Text("DebtsCounter")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 40)

                Text("LOGIN INTO GROUP SESSION")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.top, 20)

                VStack(spacing: 20) {
                    Button(action: {
                        print("LOGIN INTO Group Session button tapped")
                    }) {
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black.opacity(0.3))
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                    }

                    Button(action: {
                        print("PASSWORD FOR LOGIN INTO Group Session button tapped")
                    }) {
                        Text("Password")
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
            .padding(0)
        }
        .navigationBarBackButtonHidden(true)
    }
}

