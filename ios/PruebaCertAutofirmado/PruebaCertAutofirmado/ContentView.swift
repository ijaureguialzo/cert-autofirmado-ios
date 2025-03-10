//
//  ContentView.swift
//  PruebaCertAutofirmado
//
//  Created by Ion Jaureguialzo Sarasola on 11/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            Task {
                let (data, _) = try await
                URLSession.shared.data(from: URL(string: "https://prueba.test")!)

                print(data)
            }
        } label: {
            Text("Pide datos")
        }
    }
}

#Preview {
    ContentView()
}
