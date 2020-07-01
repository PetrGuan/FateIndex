//
//  ClassSkillCardDeckView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/30.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct ClassSkillCardDeckView: View {
    let classSkills: [ClassSkill]

    var body: some View {
        VStack(spacing: 0) {
            ForEach(self.classSkills, id: \.self) { classSkill in
                ClassSkillCardView(topTitle: self.topTitle(classSkill: classSkill), avatar: classSkill.avatar, name: classSkill.name + " " + classSkill.level, desc: classSkill.effect)
            }
        }
    }

    private func topTitle(classSkill: ClassSkill) -> String {
        if classSkill == classSkills.first {
            return "在战斗中自动发动效果的技能"
        }
        else {
            return ""
        }
    }
}

struct ClassSkillCardDeckView_Previews: PreviewProvider {
    static var previews: some View {
        ClassSkillCardDeckView(classSkills: ServantSkillStore.shared.allServantSkills()["222"]!.classSkills)
    }
}
