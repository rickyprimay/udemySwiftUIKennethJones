//
//  ContentView.swift
//  VacationVegas
//
//  Created by Ricky Primayuda Putra on 05/10/24.
//

import SwiftUI
import Charts

struct SampleTripRating {
    let trip: Int
    let rating: Int
    
    static let ratings: [SampleTripRating] = [
        SampleTripRating(trip: 1, rating: 55),
        SampleTripRating(trip: 2, rating: 76),
        SampleTripRating(trip: 3, rating: 88),
        SampleTripRating(trip: 4, rating: 96),
        SampleTripRating(trip: 5, rating: 79),
        SampleTripRating(trip: 6, rating: 67),
    ]
}

struct TripsChart: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Trip History & Ratings")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                Chart(SampleTripRating.ratings, id: \.trip) { rating in
                    BarMark(
                        x: .value("Trip", rating.trip),
                        y: .value("Rating", rating.rating)
                    )
                    .foregroundStyle(.blue.gradient)
                    
                    LineMark(
                        x: .value("Trip", rating.trip),
                        y: .value("Rating", rating.rating)
                    )
                    .foregroundStyle(.purple)
                    .interpolationMethod(.catmullRom)
                }
                .chartXScale(domain: 1...6)
                .chartYScale(domain: 50...100)
                .frame(height: 400)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(15)
                .shadow(radius: 5)
                
                Spacer()
            }
            .padding(.horizontal)
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Trips Overview")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    TripsChart()
}

