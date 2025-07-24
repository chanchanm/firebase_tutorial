//
//  AuthenticationView.swift
//  firebase tutorial
//
//  Created by C M on 6/7/25.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        VStack{
            NavigationLink {
                SignInEmailView()
            } label: {
                Text("Sign in with email")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            Spacer(minLength: 20)
        }
        .padding()
        .navigationTitle("Sign In")
    }
}

#Preview {
    NavigationStack {
        AuthenticationView()
    }
}
