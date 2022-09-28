//
//  BodyAchivmentView.swift
//  AwardsCollectionApp
//
//  Created by ikorobov on 28.09.2022.
//

import SwiftUI

struct BodyAchivmentView: View {
    
    @Binding var isAnimated: Bool
    
    var body: some View {
        VStack {
            
            ZStack {
                BodyView(
                    isAnimated: $isAnimated,
                    colorOne: .red,
                    colorTwo: .orange,
                    animation: .easeOut
                )
                    .frame(width: 150, height: 150)
                BodyView(
                    isAnimated: $isAnimated,
                    colorOne: .yellow,
                    colorTwo: .green,
                    animation: .easeOut
                )
                    .frame(width: 150, height: 150)
                    .rotationEffect(.degrees(-270))
                    .offset(x: 75, y: 75)
                BodyView(
                    isAnimated: $isAnimated,
                    colorOne: .white,
                    colorTwo: .blue,
                    animation: .easeOut
                )
                    .frame(width: 150, height: 150)
                    .rotationEffect(.degrees(-180))
                    .offset(x: 0, y: 150)
                BodyView(
                    isAnimated: $isAnimated,
                    colorOne: .cyan,
                    colorTwo: .black,
                    animation: .easeOut
                )
                .frame(width: 150, height: 150)
                    .rotationEffect(.degrees(-90))
                    .offset(x: -75, y: 75)
            }

            Spacer()
        }
    }

}


struct BodyAchivmentView_Previews: PreviewProvider {
    static var previews: some View {
        BodyAchivmentView(isAnimated: .constant(false))
            .frame(width: 200, height: 200)
    }
}
