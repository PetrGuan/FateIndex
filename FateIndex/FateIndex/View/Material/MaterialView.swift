//
//  MaterialView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/7/10.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct MaterialView: View {
    @State private var searchText : String = ""

    var body: some View {
        NavigationView {
            VStack {
                if searchText.isEmpty {
                    ScrollView(.vertical) {
                        SearchBar(text: $searchText, placeholder: "搜索材料")
                        Divider()
                        MaterialCardListView(title: "金素材", materials: MaterialStore.shared.filterMaterials(keyword: "金素材"), showSubtitle: true)
                        Divider()
                        MaterialCardListView(title: "银素材", materials: MaterialStore.shared.filterMaterials(keyword: "银素材"), showSubtitle: true)
                        Divider()
                        MaterialCardListView(title: "铜素材", materials: MaterialStore.shared.filterMaterials(keyword: "铜素材"), showSubtitle: true)
                    }
                }
                else {
                    SearchBar(text: $searchText, placeholder: "搜索材料")
                    MaterialCardListView(title: "搜索结果", materials: filterMaterials(), showSubtitle: false)
                    Spacer()
                }
            }
            .navigationBarTitle("材料")
        }
    }

    private func filterMaterials() -> [MaterialModel] {
        let allMaterials = MaterialStore.shared.materials
        var results = [MaterialModel]()
        for (name, material) in allMaterials {
            if name.contains(self.searchText) {
                results.append(material)
            }
        }

        return results
    }
}

struct MaterialView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialView()
    }
}
