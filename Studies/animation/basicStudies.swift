//
//  AnimationView.swift
//  Studies
//
//  Created by Layza Maria Rodrigues Carneiro on 23/05/24.
//

import SwiftUI

struct AnimationView: View {
    @State private var isAnimated = false
    @State private var opacity: Double = 0.0
    @State private var offset = CGSize(width: 0, height: 0)
    @State private var animationAmount = 1.0
    var spacing: Double = 10
    var size: Double = 40
    
     var body: some View {
         
         VStack {
             
             HStack(spacing: spacing) {
                 Image(systemName: "circle")
                     .fontWeight(isAnimated ? .black : .semibold)
                 Image(systemName: "circle")
                     .fontWeight(isAnimated ? .semibold : .black)
                 Image(systemName: "circle")
                     .fontWeight(isAnimated ? .semibold : .black)
                 Image(systemName: "circle")
                     .fontWeight(isAnimated ? .semibold : .black)
             }
             .animation(.spring(duration: 1).repeatForever(), value: isAnimated)
             .onAppear {
                 isAnimated.toggle()
             }
             .font(.system(size: size))
             
             HStack {
                 Text("Gro")
                 Text("opi")
                     .padding(.horizontal, isAnimated ? -35 : -12)
             }
             .animation(.spring(duration: 1.0).repeatForever(), value: isAnimated)
             .font(.system(size: 50))
//             .onAppear {
//                 isAnimated.toggle()
//             }
            
             RoundedRectangle(cornerRadius: 20)
                 .fill(.brown)
                 .frame(width: isAnimated ? 320 : 270, height: 120)
                 .animation(.bouncy(duration: 1), value: isAnimated)
//                 .onTapGesture {
//                     isAnimated.toggle()
//                 }
                 .overlay {
                     Text("This is animated")
                         .opacity(opacity)
                         .font(.largeTitle)
                         .padding()
                 }
             
             Button(opacity == 0.0 ? "Fade In" : "Fade Out") {
                 withAnimation(.easeInOut(duration: 1)) {
                     opacity = opacity == 0.0 ? 1.0 : 0.0
                 }
                 isAnimated.toggle()
             }.foregroundColor(.brown)
             
             Image(systemName: "arrow.up")
                 .font(.largeTitle)
                 .offset(offset)
                 .animation(.spring(), value: offset)
                 .padding()
                 .gesture(
                    DragGesture()
                        .onChanged { value in
                            offset = value.translation
                        }
            
                        .onEnded { _ in
                            withAnimation {
                                offset = .zero
                            }
                        }
                 )
             
             Button("Tap Me") {
                         animationAmount += 1
                     }
                     .padding(50)
                     .background(.red)
                     .foregroundStyle(.white)
                     .clipShape(.circle)
                     .scaleEffect(animationAmount)
                     .animation(.easeInOut(duration: 2), value: animationAmount)
         }
     }
}

#Preview {
    AnimationView()
}
