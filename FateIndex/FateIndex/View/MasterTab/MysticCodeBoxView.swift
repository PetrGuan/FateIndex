//
//  MysticCodeBoxView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct MysticCodeBoxView: View {

    @Environment(\.colorScheme) var colorScheme

    var mysticCode: MysticCode

    var body: some View {
        VStack(alignment: .center) {
            Spacer()

            Image("mystic_code_\(mysticCode.id)_avatar")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipped()
            .cornerRadius(12)
            .frame(width: 300, height: 300)
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))

            Text("\(mysticCode.name)")
            .font(.subheadline)
            .padding(EdgeInsets(top: 5, leading: 10, bottom: 10, trailing: 10))
                .foregroundColor(.primary)
        }
        .clipped()
        .cornerRadius(12)
    }
}

struct MysticCodeBoxView_Previews: PreviewProvider {
    static var previews: some View {
        MysticCodeBoxView(mysticCode: MysticCode(id: "1", name: "魔术礼装·迦勒底", desc: "支援人理继续保障机关·迦勒底 master 的魔术礼装", access: [""], skills: []))
    }
}
