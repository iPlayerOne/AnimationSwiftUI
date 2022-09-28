//
//  LeftWingView.swift
//  AnimationSwiftUI
//
//  Created by ikorobov on 27.09.2022.
//

import SwiftUI

struct  SemiCircleView: View {
    
    let angle: Double
    let color: Color
    
    var body: some View {
        
        GeometryReader { geometry in
            
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: middle, y: middle),
                    radius: middle,
                    startAngle: .degrees(180),
                    endAngle: .degrees(0),
                    clockwise: true
                )
            }
            .fill(
                color
            )
            .rotationEffect(
                .degrees(angle)
            )
            
        }
    }
}

struct LeftWingView_Previews: PreviewProvider {
    static var previews: some View {
        SemiCircleView(angle: -40, color: .yellow)
            .frame(width: 200, height: 200)
    }
}
