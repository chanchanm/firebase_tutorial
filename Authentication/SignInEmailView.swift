//
//  SignInEmailView.swift
//  firebase tutorial
//
//  Created by C M on 6/7/25.
//

import SwiftUI

@MainActor
final class SignInEmailViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    
    func signIn() {
        guard !email.isEmpty,!password.isEmpty else {
            print("No email or password found.")
            return
        }
        Task {
            do {
                let returnUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("User signed in successfully: \(returnUserData)")
            } catch {
                print("Error signing in: \(error.localizedDescription)")
            }
        }
    }
}

struct SignInEmailView: View {
    
    @StateObject var viewModel: SignInEmailViewModel = .init()
    
    var body: some View {
        VStack {
            TextField("Email", text: $viewModel.email)
                .padding()
                .background(Color.secondary.opacity(0.4))
                .cornerRadius(10)
                .textInputAutocapitalization(.never)
            SecureField("Password", text: $viewModel.password)
                .padding()
                .background(Color.secondary.opacity(0.4))
                .cornerRadius(10)
                .textInputAutocapitalization(.never)
            Button{
                viewModel.signIn()
            } label: {
                Text("sign in")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding(20)
        .navigationTitle("sign in with email")
    }
}

#Preview {
    NavigationStack {
        SignInEmailView()
    }
}
