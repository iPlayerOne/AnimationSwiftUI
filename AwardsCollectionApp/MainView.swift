//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    @State private var isAnimated = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(awardIsShowing ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(awardIsShowing ? 2 : 1)
                        .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                }
            }
            
            Spacer()
            if awardIsShowing {
                BodyAchivmentView(isAnimated: $isAnimated)
                    .frame(width: 250, height: 250)
                    .transition(.leadingSlide)
                    .onAppear {
                        isAnimated.toggle()
                    }
            }

            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
            isAnimated.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension AnyTransition {
    static var leadingSlide: AnyTransition {
        let insertion = AnyTransition.move(edge: .allCases.randomElement() ?? .top)
            .combined(with: .move(edge: .bottom))
        let removal = AnyTransition.opacity
            .combined(with: .move(edge: .bottom))
        return .asymmetric(insertion: insertion, removal: removal)
    }

}
