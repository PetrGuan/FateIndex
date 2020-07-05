//
//  ActiveSkillCardView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/7/3.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct ActiveSkillCardView: View {
    let activeSkill: ServantSkillModel

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ActiveSkillCardView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveSkillCardView(activeSkill: ServantSkillStore.shared.allServantSkills()["2"]!.skills[0])
    }
}
