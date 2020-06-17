//
//  RoundedListDetailView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/17.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct RoundedListDetailView: View {
    var mysticCode: MysticCode

    @Environment(\.colorScheme) var colorScheme

    @State var selectedIndex = 0

    @State var selectedSkill: MysticCodeSkill

    var body: some View {
        VStack {
            HStack {
                if selectedIndex == 0 {
                    RoundedShadowButton(title: "", avatar: mysticCode.skills[0].avatar, action: {
                        self.selectedIndex = 0
                        self.selectedSkill = self.mysticCode.skills[0]
                    })
                }
                else {
                    RoundedButton(title: "", avatar: mysticCode.skills[0].avatar, action: {
                        self.selectedIndex = 0
                        self.selectedSkill = self.mysticCode.skills[0]
                    })
                }

                if selectedIndex == 1 {
                    RoundedShadowButton(title: "", avatar: mysticCode.skills[1].avatar, action: {
                        self.selectedIndex = 1
                        self.selectedSkill = self.mysticCode.skills[1]
                    })
                }
                else {
                    RoundedButton(title: "", avatar: mysticCode.skills[1].avatar, action: {
                        self.selectedIndex = 1
                        self.selectedSkill = self.mysticCode.skills[1]
                    })
                }

                if selectedIndex == 2 {
                    RoundedShadowButton(title: "", avatar: mysticCode.skills[2].avatar, action: {
                        self.selectedIndex = 2
                        self.selectedSkill = self.mysticCode.skills[2]
                    })
                }
                else {
                    RoundedButton(title: "", avatar: mysticCode.skills[2].avatar, action: {
                        self.selectedIndex = 2
                        self.selectedSkill = self.mysticCode.skills[2]
                    })
                }
            }

            VStack {
                Text(selectedSkill.skillName)
                    .font(.title)

                Divider()

                ForEach(selectedSkill.stableEffects) { text in
                    Text(text)
                }

                if !selectedSkill.stableEffects.isEmpty {
                    Divider()
                }

                ForEach(0 ..< selectedSkill.lvEffects.count) { i in
                    VStack(alignment: .center) {
                        if i < self.selectedSkill.lvEffects.count {
                            Text(self.selectedSkill.lvEffects[i].effectDesc)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        }

                        VStack {
                            if i < self.selectedSkill.lvEffects.count {
                                HStack(alignment: .center) {
                                    Spacer()
                                    ForEach(self.selectedSkill.lvEffects[i].effects.prefix(5)) { effectValue in
                                        Spacer()
                                        Text(effectValue)
                                            .font(.subheadline)
                                        Spacer()
                                    }
                                    Spacer()
                                }
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                            }

                            if i < self.selectedSkill.lvEffects.count {
                                HStack {
                                    Spacer()
                                    ForEach(self.selectedSkill.lvEffects[i].effects.reversed().prefix(5).reversed()) { effectValue in
                                        Spacer()
                                        Text(effectValue)
                                            .font(.subheadline)
                                        Spacer()
                                    }
                                    Spacer()
                                }
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                            }
                        }
                        .background(Color(hex: self.colorScheme == .dark ? 0x202023 : 0xEDEDEE))

                    }
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                }

                HStack {
                    Text("冷却时间:")
                    Text(selectedSkill.countDown)
                }
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            }
            .cornerRadius(10)
        }
    }
}

struct RoundedListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedListDetailView(mysticCode: MysticCodeStore.shared.mysticCodes[3], selectedSkill: MysticCodeStore.shared.mysticCodes[3].skills[0])
    }
}
