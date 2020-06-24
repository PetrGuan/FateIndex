//
//  RoundedButton.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/17.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct RoundedButton: View {
    let title: String
    let avatar: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(avatar)
                .resizable()
                .renderingMode(.original)
                .cornerRadius(12)
                .frame(width: 65, height: 65)
        }
    }
}

struct RoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButton(title: "", avatar: "宝具威力提升", action: {})
    }
}
