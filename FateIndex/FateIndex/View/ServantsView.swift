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
                SearchBar(text: $searchText, placeholder: "Search servants")
                Divider()
                ZStack(alignment: .top) {
                    ScrollView(showsIndicators: false) {
                        VStack(alignment: .leading) {
                            TopNServantsListView()
                            Divider()
                            ServantClassListView()
                            Divider()
                            CampaignServantListView()
                            Divider()
                            DavinciStoreCraftEssenceListView()
                            Divider()
                            ContentView()
                            Spacer()
                                .frame(height: 26)
                        }
                    }
                }
                .navigationBarTitle(Text("FateIndex"))
            }
        }
    }
}

struct ServantsView_Previews: PreviewProvider {
    static var previews: some View {
        ServantsView()
    }
}
