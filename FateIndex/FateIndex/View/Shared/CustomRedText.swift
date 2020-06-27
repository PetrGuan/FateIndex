//
//  CustomRedText.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/25.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct CustomRedText: View {
    let title: String
    var body: some View {
        Text(title)
            .foregroundColor(Color(hex: 0xfe365e))
    }
}

struct CustomRedText_Previews: PreviewProvider {
    static var previews: some View {
        CustomRedText(title: "")
    }
}
