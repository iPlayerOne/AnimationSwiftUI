//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by ikorobov on 26.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    var wingsAngle = 50.0
    var isFlewAway = false
    
    var body: some View {
        ZStack() {
                TriangleView(
                    angle: -300,
                    color: .yellow
                )
                .frame(width: 125, height: 125)
                .offset(x: -110, y: 0)
            
                SemiCircleView(
                    angle: wingsAngle,
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
                    angle: wingsAngle,
                    color: .cyan
                )
                .animation(Animation.easeInOut(duration: 1.0), value: 1)
                .frame(width: 140, height: 140)
                .offset(x: -20,y: -90)
            
            TriangleView(
                angle: 100,
                color: .red
            )
            .frame(width: 50, height: 50)
            .offset(x: 130,y: -120)

                Circle()
                .foregroundColor(.yellow)
                .frame(width: 100, height: 100)
                .offset(x: 70,y: -130)
            
            Circle()
                .frame(width: 10,height: 10)
                .offset(x:90,y:-130)

        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
