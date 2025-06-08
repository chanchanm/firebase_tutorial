//
//  SettingsView.swift
//  firebase tutorial
//
//  Created by C M on 6/7/25.
//

import SwiftUI

@MainActor
final class SettingsViewModel: ObservableObject {
    
    func signOut() throws{
        try AuthenticationManager.share.signOut()
    }
}

struct SettingsView: View {
    
    @StateObject private var viewModel = SettingsViewModel()
    @Binding var showSignInView: Bool
    
    var body: some View {
        List {
            Button("Logout") {
                Task {
                    do {
                        try viewModel.signOut()
                        showSignInView = true
                    } catch {
                        print(error.localizedDescription)
                    }
                }
            }
        }
            .navigationBarTitle("Settings")
        }
    }
    
    
#Preview {
        NavigationStack {
            SettingsView(showSignInView: .constant(false))
        }
}

