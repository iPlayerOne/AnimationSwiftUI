//
//  BodyView.swift
//  AwardsCollectionApp
//
//  Created by ikorobov on 28.09.2022.
//

import SwiftUI

struct BodyView: View {
    @Binding var isAnimated: Bool
    let colorOne: Color
    let colorTwo: Color
    let animation: Animation
    
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let middle = width / 2
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: middle))
                path.addQuadCurve(to: CGPoint(x: middle, y: 0), control:CGPoint(x: middle, y: middle))
                path.addQuadCurve(to: CGPoint(x: width, y: middle), control:CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: middle, y: height - 20))
            }
            .fill(
                LinearGradient(
                    colors: [colorOne, colorTwo],
                    startPoint: UnitPoint(x: 0, y: 0),
                    endPoint: UnitPoint(x: 1, y: 1)
                )
                )
                
                Path { path in
                   
                    path.addArc(
                        center: CGPoint(x: width, y: height),
                        radius: middle,
                        startAngle: .degrees(-90),
                        endAngle: .degrees(180),
                        clockwise: true
                    )
                    path.addArc(
                        center: CGPoint(x: 0, y: height),
                        radius: middle,
                        startAngle: .degrees(0),
                        endAngle: .degrees(-90),
                        clockwise: true
                    )
                }
                    .stroke(Color.gray, lineWidth: 2)
        }
        .rotationEffect(isAnimated ? Angle(degrees: 180) : Angle(degrees: 0))
        .animation(isAnimated ? .spring().repeatForever() : .default,
                   value: isAnimated)
    }
}
                
struct BodyView_Previews: PreviewProvider {
    static var previews: some View {
        BodyView(
            isAnimated: .constant(false),
            colorOne: .red,
            colorTwo: .gray,
            animation: .easeOut
        )
            .frame(width: 200, height: 200)
    }
}
