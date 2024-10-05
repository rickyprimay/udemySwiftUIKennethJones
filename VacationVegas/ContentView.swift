//
//  ContentView.swift
//  VacationVegas
//
//  Created by Ricky Primayuda Putra on 05/10/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Places", systemImage: "photo"){
                PlaceList()
            }
            
            Tab("Trip History", systemImage: "chart.line.uptrend.xyaxis"){
                TripsChart()
            }
            
            Tab("Profile", systemImage: "person.crop.circle"){
                Profile()
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(Place.preview)
}
