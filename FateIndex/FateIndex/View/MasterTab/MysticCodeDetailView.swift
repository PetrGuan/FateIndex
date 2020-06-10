//
//  MysticCodeDetailView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/9.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct MysticCodeDetailView: View {
    var mysticCode: MysticCode

    var body: some View {
        VStack {
                ScrollView(.vertical) {
                    Text(mysticCode.name)
                        .font(.headline)

                    Image("mystic_code_\(mysticCode.id)_avatar")
                    .resizable()
                    .clipped()
                    .frame(width: 215, height: 200)
                    .cornerRadius(12)
                }

                List {
                    Text("解说")
                        .font(.headline)
                    Text(mysticCode.desc)
                        .font(.callout)

                    Text("技能")
                    .font(.headline)

                    NavigationLink(destination: ContentView()) {
                        CommonCellView(avatar: mysticCode.skills[0].avatar, text: mysticCode.skills[0].skillName)
                    }

                    NavigationLink(destination: ContentView()) {
                        CommonCellView(avatar: mysticCode.skills[1].avatar, text: mysticCode.skills[1].skillName)
                    }

                    NavigationLink(destination: ContentView()) {
                        CommonCellView(avatar: mysticCode.skills[2].avatar, text: mysticCode.skills[2].skillName)
                    }

                    Text("获得方法")
                    .font(.headline)

                    ForEach(self.mysticCode.access, id: \.self) { access in
                        Text(access)
                            .font(.callout)
                    }
                }
            }
        .navigationBarTitle("礼装详情")
    }
}

struct MysticCodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MysticCodeDetailView(mysticCode: MysticCode(id: "", name: "", desc: "", access: [""], skills: []))
    }
}
