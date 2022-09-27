//
//  BirdView.swift
//  AnimationSwiftUI
//
//  Created by ikorobov on 27.09.2022.
//

import SwiftUI

struct BirdView: View {
    
    var body: some View {
        ZStack {
            TriangleView(
                angle: isFlewAway ? -310 : -290,
                color: .yellow
            )
            .frame(width: 125, height: 125)
            .offset(x: -110, y: 0)
            
            SemiCircleView(
                angle: isFlewAway ? -20 : 50,
                color: .blue
            )
            .frame(width: 150, height: 150)
            .offset(x: 0, y: -90)
            
            
            TriangleView(
                angle: 0,
                color: .red
            )
            .frame(width: 50, height: 50)
            .offset(x: -30 ,y: 40)
            TriangleView(
                angle: 0,
                color: .red
            )
            .frame(width: 50, height: 50)
            .offset(x: 0,y: 40)
            
            SemiCircleView(
                angle: -30,
                color: .init(.systemGray)
            )
            .frame(width: 200, height: 200)
            .offset(x: -40, y: -75)
            
            SemiCircleView(
                angle: isFlewAway ? -20 : 50,
                color: .cyan
            )
            .frame(width: 140, height: 140)
            .offset(x: -20,y: -90)
            
            TriangleView(
                angle: 100,
                color: .red
            )
            .frame(width: 50, height: 50)
            .offset(x: 130,y: -120)
            
            CircleView()
                .frame(width: 100, height: 100)
                .offset(x: 70,y: -130)
        }
    }
}

struct BirdView_Previews: PreviewProvider {
    static var previews: some View {
        BirdView()
    }
}
