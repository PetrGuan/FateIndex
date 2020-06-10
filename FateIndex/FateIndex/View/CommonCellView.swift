//
//  CommonCellView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/9.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct CommonCellView: View {
    var avatar: String
    var text: String

    var body: some View {
        HStack(alignment: .center) {
            Image(avatar)
            .resizable()
            .clipped()
            .cornerRadius(10)
            .frame(width: 55, height: 55)

            VStack(alignment: .leading) {
                Text(text)
                    .font(.headline)
            }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        }
    }
}

struct CommonCellView_Previews: PreviewProvider {
    static var previews: some View {
        CommonCellView(avatar: "", text: "")
    }
}
