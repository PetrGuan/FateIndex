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
            .navigationBarTitle("从者")
        }
    }
}

struct ServantsView_Previews: PreviewProvider {
    static var previews: some View {
        ServantsView()
    }
}
