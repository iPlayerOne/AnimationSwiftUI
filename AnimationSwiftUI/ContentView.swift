//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by ikorobov on 26.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isFlewAway = false
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                
                TriangleView(
                    angle: isFlewAway ? -310 : -290,
                    color: .yellow
                )
                .frame(width: 125, height: 125)
                .offset(x: -100, y: 0)
                
                SemiCircleView(
                    angle: isFlewAway ? -20 : 50,
                    color: .blue
                )
                .frame(width: 120, height: 120)
                .offset(x: 10, y: -90)
                
                
                TriangleView(
                    angle: 0,
                    color: .red
                )
                .frame(width: 50, height: 50)
                .offset(x: -20 ,y: 40)
                TriangleView(
                    angle: 0,
                    color: .red
                )
                .frame(width: 50, height: 50)
                .offset(x: 10,y: 40)
                
                SemiCircleView(
                    angle: -30,
                    color: .init(.systemGray)
                )
                .frame(width: 200, height: 200)
                .offset(x: -30, y: -75)
                
                SemiCircleView(
                    angle: isFlewAway ? -20 : 50,
                    color: .cyan
                )
                .frame(width: 140, height: 140)
                .offset(x: -10,y: -90)
                
                TriangleView(
                    angle: 100,
                    color: .red
                )
                .frame(width: 50, height: 50)
                .offset(x: 140,y: -120)
                
                CircleView()
                    .frame(width: 100, height: 100)
                    .offset(x: 80,y: -130)
                
            }
            .animation(
                isFlewAway ?
                    .easeInOut(duration: 0.5).repeatForever()
                : .default, value: isFlewAway
            )
            
            if !isFlewAway {
                Image(systemName: "globe")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .offset(x: 0, y: -30)
                    .foregroundColor(.accentColor)
                    .transition(.move(edge: .bottom))
            } else {
                Text("2022. Cuckoos flying away")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .transition(.move(edge: .leading))
                
            }
            
            Spacer()
            
            Button(
                isFlewAway ? "Calm Down" : "Fly away")
            {
                withAnimation {
                    isFlewAway.toggle()
                }
            }
            .font(.title)
            .frame(width: 200, height: 60)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
            .padding()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
