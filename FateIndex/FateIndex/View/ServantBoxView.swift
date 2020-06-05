//
//  ServantBoxView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/5.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct ServantBoxView: View {
    @Environment(\.colorScheme) var colorScheme

    var topNServant: TopNServant

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Image(topNServant.portrait)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .cornerRadius(12)
                    .shadow(radius: 10)
                    .frame(width: 80, height: 80)

                Text(topNServant.name.uppercased())
                    .font(.system(.subheadline))
                    .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))

                Text(topNServant.servantClass)
                    .font(.system(size: 12))
                    .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
            }
            .padding(12)
        }
        .frame(minWidth: 105, maxWidth: 105, minHeight: 164,  maxHeight: 164, alignment: .topLeading)
        .background(Color(hex: colorScheme == .dark ? 0x202023 : 0xEDEDEE))
        .padding(0)
        .cornerRadius(12)
    }
}

struct ServantBoxView_Previews: PreviewProvider {
    static var previews: some View {
        ServantBoxView(topNServant: TopNServant(id: "", name: "", servantClass: "", portrait: ""))
    }
}
