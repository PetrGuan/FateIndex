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
    let topText: String

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        ScrollView(.vertical) {

            Text(topText)
                .font(.title)
                .foregroundColor(Color(hex: colorScheme == .dark ? 0x5AFAFE : 0xA3DDAA))
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))

            Image("craftEssence_\(craftEssence.id)")
                .resizable()
                .frame(width: 300, height: 512)
                .padding()

            Divider()

            VStack {
                Text("画师  \(craftEssence.illustrator)")
                    .padding()

                Text(craftEssence.rarityStars())
                    .padding()

                Text("初始/满级HP  \(craftEssence.minAndMaxHP)")
                    .padding()

                Text("初始/满级ATK  \(craftEssence.minAndMaxATK)")
                    .padding()
            }

            Divider()

            Image(craftEssence.effectImg)
                .resizable()
                .clipped()
                .cornerRadius(6)
                .frame(width: 55, height: 55)

            VStack {
                Text(craftEssence.effect)
                    .lineSpacing(6)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))

                Divider()

                Text(craftEssence.lore)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(6)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
            }
        }
        .background(Color(hex: colorScheme == .dark ? 0x292C2C : 0xFFFFFF))
        .padding()
    }
}

struct CraftEssenceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CraftEssenceDetailView(craftEssence: CraftEssenceStore.shared.craftEssences[0], topText: "")
    }
}
