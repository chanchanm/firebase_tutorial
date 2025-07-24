//
//  ContentView.swift
//  firebase tutorial
//
//  Created by C M on 6/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello")
                .font(.largeTitle)
                .padding()
            
            Text("Starting again from scratch")
                .font(.title2)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
        .padding(.horizontal, 32)
        .padding(.vertical, 12)
    }
}

#Preview {
    ContentView()
}
