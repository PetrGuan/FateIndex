//
//  MaterialCardListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/7/9.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct MaterialCardListView: View {
    var body: some View {

        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                MaterialCardView(avatar: "英雄之证", title: "英雄之证")
                MaterialCardView(avatar: "英雄之证", title: "英雄之证")
                MaterialCardView(avatar: "英雄之证", title: "英雄之证")
                MaterialCardView(avatar: "英雄之证", title: "英雄之证")
                MaterialCardView(avatar: "英雄之证", title: "英雄之证")
            }
            .padding()
        }
    }
}

struct MaterialCardListView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialCardListView()
    }
}
