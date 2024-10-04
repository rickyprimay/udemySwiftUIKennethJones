//
//  ScrollImage.swift
//  VacationVegas
//
//  Created by Ricky Primayuda Putra on 05/10/24.
//

import SwiftUI

struct ScrollImage: View {
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .clipShape(.rect(cornerRadius: 20))
            .scrollTransition { content, phase in
                content
                    .scaleEffect(phase.isIdentity ? 1 : 0.5)
                    .opacity(phase.isIdentity ? 1 : 0.5)
            }
    }
}

#Preview {
    ScrollImage(image: "bellagio")
}
