//
//  VacationVegasApp.swift
//  VacationVegas
//
//  Created by Ricky Primayuda Putra on 05/10/24.
//

import SwiftUI

@main
struct VacationVegasApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Place.self)
    }
}
