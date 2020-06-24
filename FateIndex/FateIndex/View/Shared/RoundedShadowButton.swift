//
//  RoundedShadowButton.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/17.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct RoundedShadowButton: View {
    
    let title: String
    let avatar: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(avatar)
                .resizable()
                .renderingMode(.original)
                .cornerRadius(12)
                //.clipShape(Rectangle().cornerRadius(10))
                .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .frame(width: 65, height: 65)
        }
    }
}

struct RoundedShadowButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedShadowButton(title: "", avatar: "宝具威力提升", action: {})
    }
}

struct RoundedShadowButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            //.foregroundColor(Color.white)
            .padding()
            //.background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(12.0)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
    }
}
