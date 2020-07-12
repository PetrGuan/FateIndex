//
//  MaterialListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/7/12.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct MaterialListView: View {

    let navigationTitle: String
    let materialNames: [String]

    var body: some View {
        List {
            ForEach(materialNames) { materialName in
                NavigationLink(destination: MaterialDetailView(material: self.material(name: materialName)).navigationBarTitle(materialName)) {
                    CommonCellView(avatar: materialName, text: materialName, imageSize: CGSize(width: 60, height: 66))
                }
            }
        }
        .navigationBarTitle(navigationTitle)
    }

    private func material(name: String) -> MaterialModel {
        return MaterialStore.shared.materials[name]!
    }
}

struct MaterialListView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialListView(navigationTitle: "", materialNames: [])
    }
}
