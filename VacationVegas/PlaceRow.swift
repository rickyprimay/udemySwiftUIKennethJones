//
//  PlaceRow.swift
//  VacationVegas
//
//  Created by Ricky Primayuda Putra on 05/10/24.
//

import SwiftUI

struct PlaceRow: View {
    @State private var starFill: Bool = true
    var place: Place
    
    var body: some View {
        HStack {
            place.image
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 7))
                .frame(width: 100, height: 100)
            
            Text(place.name)
            
            Spacer()
            
            Image(systemName: place.interested ? "star.fill" : "star")
                .foregroundColor(.yellow)
                .onTapGesture {
                    place.interested.toggle()
                }
        }
    }
}
