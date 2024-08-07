//
//  ChainLogo.swift
//  Grupi
//
//  Created by User on 13/05/24.
//

import SwiftUI

struct ChainLogo: View {
    var size: Double
    var spacing: Double
    
    var body: some View {
        HStack(spacing: spacing) {
            Image(systemName: "circle")
                .fontWeight(.black)
            Image(systemName: "circle")
                .fontWeight(.heavy)
            Image(systemName: "circle")
                .fontWeight(.bold)
            Image(systemName: "circle")
                .fontWeight(.semibold)
        }
        .font(.system(size: size))
    }
}
