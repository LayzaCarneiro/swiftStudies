//
//  dragGesture.swift
//  Studies
//
//  Created by Layza Maria Rodrigues Carneiro on 02/11/24.
//

import SwiftUI

struct dragGesture: View {
    @State private var positionCircle: CGPoint = CGPoint(x: 100, y: 100)
    @State private var pastPositions: [CGPoint] = []
    let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink, .cyan]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                ForEach(pastPositions, id: \.self) { position in
                    Circle()
                        .fill((colors.randomElement() ?? .white).opacity(0.4))
                        .frame(width: 50, height: 50)
                        .position(position)
                }
                
                
                Circle()
                    .fill(Color.white)
//                    .fill(pastPositions.isEmpty ? Color.blue : Color.clear)
                    .frame(width: 50, height: 50)
                    .position(positionCircle)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                pastPositions.append(CGPoint(
                                    x: CGFloat.random(in: (gesture.location.x - 50)...gesture.location.x),
                                    y: CGFloat.random(in: (gesture.location.y - 50)...gesture.location.y)
                                ))
                                
//                                if(pastPositions.count > 15) {
//                                    pastPositions.removeFirst()
//                                }
                            }
//                            .onEnded { _ in
//                                pastPositions.removeAll()
//                            }
                    )
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray.opacity(0.2))
        }
    }
}

struct ContentView: View {
    var body: some View {
        dragGesture()
    }
}
