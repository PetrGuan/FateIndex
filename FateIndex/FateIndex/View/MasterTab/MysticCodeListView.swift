//
//  MysticCodeListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct MysticCodeListView: View {

    @State private var mysticCodes = MysticCodeStore.shared.mysticCodes

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .bottom) {
                Text("魔术礼装".uppercased())
                    .font(.headline)
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))

                Spacer()

                NavigationLink(destination: MysticCodeTableListView()) {
                    Text("查看全部")
                    .foregroundColor(Color(hex: 0xfe365e))
                }
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(self.mysticCodes.prefix(upTo: 5), id: \.id) { mysticCode in
                        NavigationLink(destination: MysticCodeDetailView(mysticCode: mysticCode)) {
                            MysticCodeBoxView(mysticCode: mysticCode)
                        }
                    }
                }
                .frame(minHeight: 70)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
        }
    }
}

struct MysticCodeListView_Previews: PreviewProvider {
    static var previews: some View {
        MysticCodeListView()
    }
}
