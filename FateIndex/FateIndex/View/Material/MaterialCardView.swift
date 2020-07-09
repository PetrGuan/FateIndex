//
//  MaterialCardView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/7/9.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct MaterialCardView: View {
    let avatar: String
    let title: String

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        HStack(alignment: .top) {
            VStack {
                Image(avatar)
                    .resizable()
                    .cornerRadius(12)
                    .frame(width: 81, height: 88)
                Text(title)
            }
            .padding()

            Text("【技能强化＆灵基再临素材】被认定为英雄的证明。为众多人所拥有，但因没有自觉而被遗忘。")
            .padding()
        }
        .background(Color(hex: colorScheme == .dark ? 0xFFFFFF : 0xEDEDEE))
    }
}

struct MaterialCardView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialCardView(avatar: "英雄之证", title: "英雄之证")
    }
}
