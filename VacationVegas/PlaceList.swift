//
//  ContentView.swift
//  VacationVegas
//
//  Created by Ricky Primayuda Putra on 05/10/24.
//

import SwiftUI
import SwiftData

struct PlaceList: View {
    @Query(sort: \Place.name) private var places: [Place]
    
    @State private var showImages: Bool = false
    @State private var searchText: String = ""
    @State private var filterByInterested = false
    
    private var predicate: Predicate<Place> {
        #Predicate<Place> {
            if !searchText.isEmpty && filterByInterested{
                $0.name.localizedStandardContains(searchText) && $0.interested
            } else if !searchText.isEmpty {
                $0.name.localizedStandardContains(searchText)
            } else if filterByInterested {
                $0.interested
            } else {
                true
            }
        }
    }
    
    var body: some View {
        NavigationStack{
            List((try? places.filter(predicate)) ?? places) { place in
                PlaceRow(place: place)
            }
            .navigationTitle("Places")
            .searchable(text: $searchText, prompt: "Find a place")
            .animation(.default, value: searchText)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Show Images", systemImage: "photo.on.rectangle.fill"){
                        showImages.toggle()
                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button("Filter", systemImage: filterByInterested ? "star.fill" : "star"){
                        withAnimation{
                            filterByInterested.toggle()
                        }
                    }
                    .tint(.yellow)
                }
            }
            .sheet(isPresented: $showImages) {
                Scrolling()
            }
        }
    }
}

#Preview {
    PlaceList()
        .modelContainer(Place.preview)
}
