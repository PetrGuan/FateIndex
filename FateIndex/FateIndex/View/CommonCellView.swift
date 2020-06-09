//
//  CommonCellView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/9.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct CommonCellView: View {
    var body: some View {
        HStack(alignment: .center) {
            Image("三色魔放")
            .resizable()
            .clipped()
            .cornerRadius(10)
            .frame(width: 55, height: 55)

            VStack(alignment: .leading) {
                Text("全体强化")
                    .font(.headline)
            }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        }
    }
}

struct CommonCellView_Previews: PreviewProvider {
    static var previews: some View {
        CommonCellView()
    }
}
