//
//  TwoColumnSheetView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/20.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

// 2 x 2 sheet
struct TwoColumnSheetView: View {
    var body: some View {
        VStack {
            HStack {
                Text("画师")

                Divider()
                Divider()

                Text("声优")
            }

            Divider()

            HStack {
                Text("NOCO")

                Divider()
                Divider()
                Divider()
                

                Text("井口裕香")
            }
        }

    }
}

struct TwoColumnSheetView_Previews: PreviewProvider {
    static var previews: some View {
        TwoColumnSheetView()
    }
}
