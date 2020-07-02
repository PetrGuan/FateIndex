//
//  FiveColumnSheetView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/7/2.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct FiveColumnSheetView: View {
    let title: String
    let values: [String]

    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .padding()

            HStack {
                Text(values[0])
                Text(values[1])
                Text(values[2])
                Text(values[3])
                Text(values[4])
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
        }
    }
}

struct FiveColumnSheetView_Previews: PreviewProvider {
    static var previews: some View {
        FiveColumnSheetView(
            title: "对敌方全体进行强力的攻击<Lv.>",
            values: [
                "400%",
                "550%",
                "625%",
                "662.5%",
                "700%"
        ])
    }
}
