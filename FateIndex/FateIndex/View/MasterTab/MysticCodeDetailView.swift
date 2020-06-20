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
            List {
                HStack {
                    Spacer()
                    Image("mystic_code_\(mysticCode.id)_avatar")
                    .resizable()
                    .clipped()
                    .frame(width: 215, height: 200)
                    .cornerRadius(12)
                    Spacer()
                }

                Text(mysticCode.desc)
                    .font(.callout)

                RoundedListDetailView(mysticCode: mysticCode, selectedSkill: mysticCode.skills[0])
//                NavigationLink(destination: SkillDetailView(mysticCodeSkill: mysticCode.skills[0])) {
//                    CommonCellView(avatar: mysticCode.skills[0].avatar, text: mysticCode.skills[0].skillName)
//                }
//
//                NavigationLink(destination: SkillDetailView(mysticCodeSkill: mysticCode.skills[1])) {
//                    CommonCellView(avatar: mysticCode.skills[1].avatar, text: mysticCode.skills[1].skillName)
//                }
//
//                NavigationLink(destination: SkillDetailView(mysticCodeSkill: mysticCode.skills[2])) {
//                    CommonCellView(avatar: mysticCode.skills[2].avatar, text: mysticCode.skills[2].skillName)
//                }

                ForEach(self.mysticCode.access, id: \.self) { access in
                    Text(access)
                        .font(.callout)
                }
            }
            .buttonStyle(BorderlessButtonStyle())
        }
        .navigationBarTitle(mysticCode.name)
    }
}

struct MysticCodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MysticCodeDetailView(mysticCode: MysticCodeStore.shared.mysticCodes[0])
    }
}
