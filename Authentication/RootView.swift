//
//  RootView.swift
//  firebase tutorial
//
//  Created by C M on 6/4/25.
//

import SwiftUI

struct RootView: View {
    
    @State private var showSignInView: Bool = false
    
    var body: some View {
        ZStack {
          NavigationStack {
                SettingsView(showSignInView: $showSignInView)
            }
        }
        .onAppear {
            let authUser = try? AuthenticationManager.share.getAuthenticatedUser()
                self.showSignInView = authUser == nil
        }
        .fullScreenCover(isPresented: $showSignInView) {
            NavigationStack {
                AuthenticantionView(showSignInView: $showSignInView)
            }
        }
    }
}

#Preview {
    RootView()
}
