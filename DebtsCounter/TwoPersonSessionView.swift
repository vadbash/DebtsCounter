import SwiftUI

struct TwoPersonSessionView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.purple]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            Button(action: {
                dismiss()}) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                    .padding(.leading, 36)
                    .padding(0)}

            VStack(spacing: 40) {
                Image("logo")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .shadow(radius: 20)

                Text("DebtsCounter")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 40)

                Text("2 PEOPLE SESSION")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.top, 20)

                VStack(spacing: 20) {
                    Button(action: {
                        print("Log in into 2-person session tapped")
                    }) {
                        Text("Log in into session")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black.opacity(0.3))
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                    }

                    Button(action: {
                        print("Create 2-person session tapped")
                    }) {
                        Text("Create Session")
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
        .navigationBarBackButtonHidden(false)
    }
}
