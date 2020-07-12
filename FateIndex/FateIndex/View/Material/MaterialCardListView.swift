//
//  MaterialCardListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/7/9.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct MaterialCardListView: View {

    let title: String
    let materials: [MaterialModel]
    let showSubtitle: Bool

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        VStack {
            HStack {
                Text(title)
                Spacer()

                if showSubtitle {
                    NavigationLink(destination: MaterialListView(navigationTitle: title, materialNames: filterNames())) {
                        Text("查看全部")
                        .foregroundColor(Color(hex: 0xfe365e))
                    }
                }
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.materials, id: \.self) { material in
                        NavigationLink(destination: MaterialDetailView(material: self.material(name: material.name)).navigationBarTitle(material.name)) {
                            MaterialCardView(avatar: material.avatar, title: material.name, detail: material.description)
                            .background(Color(hex: self.colorScheme == .dark ? 0x202023 : 0xEDEDEE))
                        }
                    }
                }
            }
        }
        .padding()
    }

    private func filterNames() -> [String] {
        var names = [String]()
        let materials = MaterialStore.shared.materials
        for (name, element) in materials {
            if element.rarity == self.title {
                names.append(name)
            }
        }

        return names
    }

    private func material(name: String) -> MaterialModel {
        return MaterialStore.shared.materials[name]!
    }
}

struct MaterialCardListView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialCardListView(title: "", materials: [], showSubtitle: true)
    }
}
