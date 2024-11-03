//
//  generativeArt.swift
//  Studies
//
//  Created by Layza Maria Rodrigues Carneiro on 02/11/24.
//

import SwiftUI

struct GenerativeArtView: View {
    @State private var randomPositions: [CGPoint] = []
    
    let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink, .cyan]
    let circleCount = 70
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                Color.darkBlue
                
                ForEach(0..<circleCount, id: \.self) { index in
                    Image(systemName: "star")
                        .foregroundStyle(colors.randomElement() ?? .white)
                        .frame(width: CGFloat.random(in: 20...100), height: CGFloat.random(in: 20...100))
                        .position(randomPositions.indices.contains(index) ? randomPositions[index] : .zero)
                        .animation(Animation.easeInOut(duration: Double.random(in: 2...5)).repeatForever(autoreverses: true), value: randomPositions)
                }
            }
            .onAppear {
                randomPositions = (0..<circleCount).map { _ in
                    CGPoint(x: CGFloat.random(in: 0...geometry.size.width),
                            y: CGFloat.random(in: 0...geometry.size.height))
                }
                
                Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { _ in
                    for index in 0..<circleCount {
                        randomPositions[index] = CGPoint(
                            x: CGFloat.random(in: 0...geometry.size.width),
                            y: CGFloat.random(in: 0...geometry.size.height)
                        )
                    }
                }
            }
        }
    }
}

//struct ContentView: View {
//    var body: some View {
//        GenerativeArtView()
//            .edgesIgnoringSafeArea(.all)
//            .background(Color.black)
//    }
//}
