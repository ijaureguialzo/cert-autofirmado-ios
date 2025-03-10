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
                URLSession.shared.data(from: URL(string: "http://prueba.test")!)

                print(String(data: data, encoding: .utf8)!)
            }
        } label: {
            Text("Pide datos")
        }
    }
}

#Preview {
    ContentView()
}
