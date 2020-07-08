//
//  ActiveSkillDetailView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/7/8.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct ActiveSkillDetailView: View {
    let skills: [ServantSkillModel]

    @Environment(\.colorScheme) var colorScheme

    @State var selectedIndex = 0

    @State var selected: ServantSkillModel

    var body: some View {
        VStack {
            Text("战斗中主动发动的技能")
                .font(.headline)
                .foregroundColor(Color(hex: colorScheme == .dark ? 0x5AFAFE : 0xA3DDAA))
            .padding()

            HStack {
                if selectedIndex == 0 {
                    RoundedShadowButton(title: "", avatar: skills[0].avatar, action: {
                        self.selectedIndex = 0
                        self.selected = self.skills[0]

                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                    })
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                }
                else {
                    RoundedButton(title: "", avatar: skills[0].avatar, action: {
                        self.selectedIndex = 0
                        self.selected = self.skills[0]

                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                    })
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                }

                if selectedIndex == 1 {
                    RoundedShadowButton(title: "", avatar: skills[1].avatar, action: {
                        self.selectedIndex = 1
                        self.selected = self.skills[1]

                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                    })
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                }
                else {
                    RoundedButton(title: "", avatar: skills[1].avatar, action: {
                        self.selectedIndex = 1
                        self.selected = self.skills[1]

                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                    })
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                }

                if selectedIndex == 2 {
                    RoundedShadowButton(title: "", avatar: skills[2].avatar, action: {
                        self.selectedIndex = 2
                        self.selected = self.skills[2]

                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                    })
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                }
                else {
                    RoundedButton(title: "", avatar: skills[2].avatar, action: {
                        self.selectedIndex = 2
                        self.selected = self.skills[2]

                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                    })
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                }
            }

            VStack {
                Text(selected.name)
                    .font(.title)

                Divider()

                ForEach(selected.stableEffects, id: \.self) { stableEffect in
                    Text("\(stableEffect.effect) \(stableEffect.value)")
                        .lineSpacing(6)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                }

                if !selected.stableEffects.isEmpty {
                    Divider()
                }

                ForEach(0 ..< selected.levelEffects.count) { i in
                    VStack(alignment: .center) {
                        if i < self.selected.levelEffects.count {
                            Text(self.selected.levelEffects[i].effect)
                                .lineSpacing(6)
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .multilineTextAlignment(.center)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        }

                        VStack {
                            if i < self.selected.levelEffects.count {
                                HStack(alignment: .center) {
                                    Spacer()
                                    ForEach(self.selected.levelEffects[i].values.prefix(5)) { effectValue in
                                        Spacer()
                                        Text(effectValue)
                                            .font(.caption)
                                        Spacer()
                                    }
                                    Spacer()
                                }
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                            }

                            if i < self.selected.levelEffects.count {
                                HStack {
                                    Spacer()
                                    ForEach(self.selected.levelEffects[i].values.reversed().prefix(5).reversed()) { effectValue in
                                        Spacer()
                                        Text(effectValue)
                                            .font(.caption)
                                        Spacer()
                                    }
                                    Spacer()
                                }
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                            }
                        }
                        //.background(Color(hex: self.colorScheme == .dark ? 0x202023 : 0xEDEDEE))

                    }
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                }

                HStack {
                    Text("冷却时间:")
                    Text(selected.coldDown)
                }
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            }
            .cornerRadius(10)
        }
        .background(Color(hex: colorScheme == .dark ? 0x292C2C : 0xFFFFFF))
        .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
    }
}

struct ActiveSkillDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveSkillDetailView(skills: ServantSkillStore.shared.allServantSkills()["2"]!.skills, selected: ServantSkillStore.shared.allServantSkills()["2"]!.skills[0])
    }
}
