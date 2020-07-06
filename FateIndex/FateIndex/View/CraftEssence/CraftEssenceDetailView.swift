//
//  CraftEssenceDetailView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/19.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct CraftEssenceDetailView: View {
    var craftEssence: CraftEssences

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                VStack(alignment: .leading) {
                    Spacer()
                    Text("")
                        .foregroundColor(Color.white)
                        .padding(12)
                }
                .frame(minWidth: 150, maxWidth: 150, minHeight: 256,  maxHeight: 256, alignment: .topLeading)
                .background(
                    ZStack(alignment: .topLeading) {
                        Image("craftEssence_\(craftEssence.id)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 256)
                })
                    .padding(0)
                    .cornerRadius(12)

                Divider()

                VStack {
                    Spacer()
                    Text("画师 \(craftEssence.illustrator)")
                        .lineSpacing(6)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minWidth: 350, idealWidth: 350, maxWidth: 350)
                    Spacer()
                    Text(craftEssence.rarityStars())
                        .lineSpacing(6)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minWidth: 350, idealWidth: 350, maxWidth: 350)
                    Spacer()
                    Text("初始/满级HP    \(craftEssence.minAndMaxHP)")
                        .lineSpacing(6)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minWidth: 350, idealWidth: 350, maxWidth: 350)
                    Spacer()
                    Text("初始/满级ATK    \(craftEssence.minAndMaxATK)")
                        .lineSpacing(6)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minWidth: 350, idealWidth: 350, maxWidth: 350)
                    Spacer()
                }
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))

                Divider()

                Image(craftEssence.effectImg)
                    .resizable()
                    .clipped()
                    .cornerRadius(6)
                    .frame(width: 55, height: 55)


                VStack {
                    Text(craftEssence.effect)
                        .lineSpacing(6)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))

                    Divider()

                    Text(craftEssence.lore)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(6)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minWidth: 350, idealWidth: 350, maxWidth: 350)
                }

            }
        }
        .navigationBarTitle(craftEssence.name)
    }
}

struct CraftEssenceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CraftEssenceDetailView(craftEssence: CraftEssenceStore.shared.craftEssences[0])
    }
}
