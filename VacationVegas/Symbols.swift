//
//  Symbols.swift
//  VacationVegas
//
//  Created by Ricky Primayuda Putra on 05/10/24.
//

import SwiftUI

struct Symbols: View {
    @State private var shouldIBounce = false
    @State private var shouldSymbolFill = false
    @State private var name = false
    
    var body: some View {
        VStack{
            Image("paris")
                .resizable()
                .foregroundStyle(.tint)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
            
            Text("Rating from this city is :")
                .font(.callout)
                .foregroundColor(.blue)
            
            Image(systemName: shouldSymbolFill ? "cloud.sun.rain.fill" : "cloud.sun.rain")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.gray, .yellow, .mint)
                .symbolEffect(.bounce, value: shouldIBounce)
                .onTapGesture {
                    shouldIBounce.toggle()
                    shouldSymbolFill.toggle()
                    name.toggle()
                }
            let hellow = "Rickies"
            name
            ?
            Text(hellow.lowercased())
                .font(.title)
                .foregroundStyle(.tint)
            :
            Text("Hello Ricky Primayuda Putra")
                .font(.title)
                .foregroundStyle(.tint)
            
            shouldSymbolFill
            ?
            Text("It's raining")
                .font(.title)
                .foregroundStyle(.tint)
            :
            Text("It's sunny")
                .font(.title)
                .foregroundStyle(.tint)
            
            HStack{
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .symbolEffect(.bounce, value: shouldIBounce)
                    .onTapGesture {
                        shouldIBounce.toggle()
                    }
                
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .symbolEffect(.bounce)

                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .symbolEffect(.bounce)

                Image(systemName: "star.leadinghalf.filled")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .symbolEffect(.bounce)
                
                Image(systemName: "star")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .symbolEffect(.bounce)

            }.padding()
        }
    }
}

#Preview {
    Symbols()
}
