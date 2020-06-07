//
//  RecentAddServantListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct RecentAddServantListView: View {
    var body: some View {
        VStack {
            HStack {
                Text("新添加从者")
                .font(.headline)

                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    Image("servant_283_status_1")
                        .resizable()
                        .clipped()
                        .frame(width: 100, height: 100)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))

                    Image("servant_282_status_1")
                        .resizable()
                    .clipped()
                    .frame(width: 100, height: 100)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))

                    Image("servant_281_status_1")
                        .resizable()
                    .clipped()
                    .frame(width: 100, height: 100)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                }
                .frame(minHeight: 70)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            }
        }
    }
}

struct RecentAddServantListView_Previews: PreviewProvider {
    static var previews: some View {
        RecentAddServantListView()
    }
}
