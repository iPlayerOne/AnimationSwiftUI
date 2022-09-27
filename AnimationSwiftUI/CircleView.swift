//
//  CircleView.swift
//  AnimationSwiftUI
//
//  Created by ikorobov on 27.09.2022.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 100, height: 100)
            Circle()
                .frame(width: 10,height: 10)
                .offset(x:20,y:0)
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
