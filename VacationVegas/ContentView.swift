//
//  ContentView.swift
//  VacationVegas
//
//  Created by Ricky Primayuda Putra on 05/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("paris")
                .resizable()
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
