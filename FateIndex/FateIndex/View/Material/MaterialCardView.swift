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
    let detail: String

    var body: some View {
        HStack(alignment: .top) {
            VStack {
                Image(avatar)
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(12)
                    .frame(width: 81, height: 88)
                Text(title)
            }
            .padding()

            Text(detail)
            .padding()
        }
        .frame(minWidth: 350, idealWidth: 350, maxWidth: 350, minHeight: 150, idealHeight: 150, maxHeight: 150)
    }
}

struct MaterialCardView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialCardView(avatar: "英雄之证", title: "英雄之证", detail: "【技能强化＆灵基再临素材】被认定为英雄的证明。为众多人所拥有，但因没有自觉而被遗忘。")
    }
}
