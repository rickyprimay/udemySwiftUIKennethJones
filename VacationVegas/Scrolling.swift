//
//  ScrollImage.swift
//  VacationVegas
//
//  Created by Ricky Primayuda Putra on 05/10/24.
//

import SwiftUI

struct Scrolling: View {
    
    var body: some View {
        ScrollView {
            VStack{
                ScrollImage(image: "bellagio")
                ScrollImage(image: "stratosphere")
                ScrollImage(image: "luxor")
                ScrollImage(image: "paris")
                ScrollImage(image: "excalibur")
                ScrollImage(image: "treasureisland")
            }
            .padding()
        }
    }
}

#Preview {
    Scrolling()
}
