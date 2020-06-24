//
//  ServantClassListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/5.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct ServantClassListView: View {

    let servantClassList = ["Saber", "Archer", "Lancer", "Rider", "Caster", "Assassin", "Berserker", "Shield", "Ruler", "Avenger", "Alterego", "MoonCancer", "Foreigner"]

    var body: some View {
        VStack(alignment: .leading) {
            Text("职阶分类".uppercased())
                .font(.headline)
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 14) {
                    ForEach(servantClassList, id: \.self) { servantClass in
                        NavigationLink(destination: FilteredServantListView(title: servantClass, servantIds: self.filterIds(servantClass: servantClass))) {
                            ServantClassView(servantClass: servantClass)
                        }
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
        }
    }

    private func filterIds(servantClass: String) -> [String] {
        return ServantStore.shared.filterServantClass(servantClass: servantClass)
    }
}

struct ServantClassListView_Previews: PreviewProvider {
    static var previews: some View {
        ServantClassListView()
    }
}
