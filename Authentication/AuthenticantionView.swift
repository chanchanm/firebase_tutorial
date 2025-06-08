//
//  AuthenticantionView.swift
//  firebase tutorial
//
//  Created by C M on 6/3/25.
//

import SwiftUI

struct AuthenticantionView: View {
    
    @Binding var showSignInView: Bool
    
    var body: some View {
        VStack {
            
            NavigationLink {
                SignInEmailView(showSignInView: $showSignInView)
            } label: {
                Text("Sign in with email")
                    .navigationTitle(Text("Sign In"))
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
        AuthenticantionView(showSignInView: .constant(false))
    }
}
