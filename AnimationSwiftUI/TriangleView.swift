//
//  TriangleView.swift
//  AnimationSwiftUI
//
//  Created by ikorobov on 27.09.2022.
//

import SwiftUI

struct TriangleView: View {
    
    let angle: Double
    let color: Color
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let zero = 0.0
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: zero))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
            }
            .fill(color)
            .rotationEffect(
                .degrees(angle)
            )
        }
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView(angle: 30, color: .red)
            .frame(width: 200, height: 200)
    }
}
