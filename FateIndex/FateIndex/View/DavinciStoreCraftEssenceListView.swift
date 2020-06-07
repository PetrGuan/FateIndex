//
//  DavinciStoreCraftEssenceListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/6.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct DavinciStoreCraftEssenceListView: View {

    @State private var craftEssences = CraftEssenceStore.shared.craftEssences

    var body: some View {
        VStack(alignment: .leading) {
            Text("达芬奇商店兑换".uppercased())
                .font(.headline)
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(self.craftEssences, id: \.id) { craftEssence in
                        DavinciStoreCraftEssenceView(craftEssence: craftEssence)
                    }
                }
                .frame(minHeight: 174)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
        }
    }
}

struct DavinciStoreCraftEssenceListView_Previews: PreviewProvider {
    static var previews: some View {
        DavinciStoreCraftEssenceListView()
    }
}
