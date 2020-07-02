//
//  NoblePhantasmView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/7/2.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct NoblePhantasmView: View {
    let servantNoblePhantasm: ServantNoblePhantasm

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        VStack(spacing: 0) {
            Spacer()

            HStack {
                Spacer()

                VStack {
                    Image(servantNoblePhantasm.card)
                        .resizable()
                        .shadow(radius: 10)
                        .frame(width: 65, height: 65)

                    Text(servantNoblePhantasm.name)
                        .foregroundColor(titleColor())
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(maxWidth: 350)

                        .padding()

                    HStack {
                        Spacer()

                        VStack {
                            Text("阶级")
                                .foregroundColor(Color(hex: colorScheme == .dark ? 0xE6CA42 : 0x000000))
                            Text("种类")
                                .foregroundColor(Color(hex: colorScheme == .dark ? 0xE6CA42 : 0x000000))
                            Text("Hit 数")
                                .foregroundColor(Color(hex: colorScheme == .dark ? 0xE6CA42 : 0x000000))
                            Text("解放条件")
                                .foregroundColor(Color(hex: colorScheme == .dark ? 0xE6CA42 : 0x000000))
                        }

                        Spacer()

                        VStack {
                            Text(servantNoblePhantasm.level)
                                .font(.headline)
                            Text(servantNoblePhantasm.type)
                                .font(.headline)
                            Text(servantNoblePhantasm.hit)
                                .font(.headline)
                            Text(servantNoblePhantasm.requirement)
                                .font(.headline)
                        }

                        Spacer()
                    }
                }
                Spacer()
            }

            VStack {
                ForEach(servantNoblePhantasm.levelEffects, id: \.self) { levelEffect in

                    FiveColumnSheetView(title: levelEffect.effect, values: levelEffect.values)
                }
            }

            VStack {
                ForEach(servantNoblePhantasm.chargeEffects, id: \.self) { levelEffect in

                    FiveColumnSheetView(title: levelEffect.effect, values: levelEffect.values)
                }
            }

            VStack {
                ForEach(servantNoblePhantasm.stableEffects, id: \.self) { stableEffect in

                    Text("\(stableEffect.effect) \(stableEffect.value)")
                }
            }
            Spacer()
        }
        .background(Color(hex: colorScheme == .dark ? 0x292C2C : 0xFFFFFF))
    }

    private func titleColor() -> Color {
        if servantNoblePhantasm.card == "Arts" {
            return Color(hex: 0x2171F8)
        }
        else if servantNoblePhantasm.card == "Quick" {
            return Color(hex: 0x52CC3A)
        }
        else {
            return Color(hex: 0xfe365e)
        }
    }
}

struct NoblePhantasmView_Previews: PreviewProvider {
    static var previews: some View {
        NoblePhantasmView(servantNoblePhantasm: ServantSkillStore.shared.allServantSkills()["150"]!.noblePhantasm)
    }
}
