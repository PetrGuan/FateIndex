//
//  DavinciStoreCraftEssenceView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/6.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct DavinciStoreCraftEssenceView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var craftEssence: CraftEssences
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Image("craftEssence_\(craftEssence.id)_avatar")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .cornerRadius(12)
                    .shadow(radius: 10)
                    .frame(width: 80, height: 80)
                
                Text(craftEssence.name)
                    .font(.system(.subheadline))
                    .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
            }
            .padding(12)
        }
        .frame(minWidth: 105, maxWidth: 105, minHeight: 164,  maxHeight: 164, alignment: .topLeading)
        .background(Color(hex: colorScheme == .dark ? 0x202023 : 0xEDEDEE))
        .padding(0)
        .cornerRadius(12)
    }
}

//struct DavinciStoreCraftEssenceView_Previews: PreviewProvider {
//    static var previews: some View {
//        DavinciStoreCraftEssenceView()
//    }
//}
