//
//  SkillDetailView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/11.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct SkillDetailView: View {

    var mysticCodeSkill: MysticCodeSkill

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                CommonCellView(avatar: mysticCodeSkill.avatar, text: mysticCodeSkill.skillName, textFont: .headline)
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))

                Divider()

                ForEach(mysticCodeSkill.stableEffects) { text in
                    Text(text)
                }

                if !mysticCodeSkill.stableEffects.isEmpty {
                    Divider()
                }

                ForEach(0 ..< mysticCodeSkill.lvEffects.count) { i in
                    VStack(alignment: .center) {
                        Text(self.mysticCodeSkill.lvEffects[i].effectDesc)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))

                        HStack(alignment: .center) {
                            Spacer()
                            ForEach(self.mysticCodeSkill.lvEffects[i].effects.prefix(5)) { effectValue in
                                Spacer()
                                Text(effectValue)
                                    .font(.subheadline)
                                Spacer()
                            }
                            Spacer()
                        }
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))

                        HStack {
                            Spacer()

                            ForEach(self.mysticCodeSkill.lvEffects[i].effects.reversed().prefix(5).reversed()) { effectValue in
                                Spacer()
                                Text(effectValue)
                                    .font(.subheadline)
                                Spacer()
                            }
                            Spacer()
                        }
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    }
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                }

                Divider()

                HStack {
                    Text("冷却时间:")
                    Text(mysticCodeSkill.countDown)
                }
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            }
        }
    }
}

struct SkillDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SkillDetailView(mysticCodeSkill: MysticCodeSkill(skillName: "应急处置", avatar: "回血", countDown: "9 → 8 → 7", lvEffects: [
            MysticCodeSkillLevelEffect(effectDesc: "己方单体的HP大回复", effects: ["30%", "32%", "34%", "36%", "38%", "40%", "42%", "44%", "46%", "50%"]),
            MysticCodeSkillLevelEffect(effectDesc: "己方单体的HP大回复", effects: ["30%", "32%", "34%", "36%", "38%", "40%", "42%", "44%", "46%", "50%"])
        ], stableEffects: []))
    }
}
