//
//  ServantsView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/5.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct ServantsView: View {
    @State private var searchText : String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                if searchText.isEmpty {
                    ScrollView(.vertical) {
                        SearchBar(text: $searchText, placeholder: "搜索从者")
                        Divider()
                        TopNServantsListView()
                        Divider()
                        ServantClassListView()
                        Divider()
                        GivenServantListView()
                        FightCharacterFilterListView()
                        RecentAddServantListView()
                    }
                }
                else {
                    SearchBar(text: $searchText, placeholder: "搜索从者")
                    FilteredServantListView(title: "显示结果", servantIds: filterServantId())
                }
            }
            .navigationBarTitle("从者")
        }
    }

    private func filterServantId() -> [String] {
        let allBasicInfos = ServantStore.shared.basicInfos
        var ids = [String]()
        for (id, info) in allBasicInfos {
            if info.name.contains(self.searchText) {
                ids.append(id)
            }
        }

        return ids
    }
}

struct ServantsView_Previews: PreviewProvider {
    static var previews: some View {
        ServantsView()
    }
}
