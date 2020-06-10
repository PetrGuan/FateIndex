//
//  MysticCodeTableListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/10.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct MysticCodeTableListView: View {
    var mysticCodes = MysticCodeStore.shared.mysticCodes

    @State private var selectedSegment = 0

    private var gender: String {
        return selectedSegment == 0 ? "male" : "female"
    }

    private let segments = ["Male", "Female"]

    var body: some View {
        VStack {
            Picker("Numbers", selection: $selectedSegment) {
                ForEach(0..<segments.count) { index in
                    Text(self.segments[index])
                        .foregroundColor(Color(hex: 0xfe365e))
                        .tag(index)
                }
            }.pickerStyle(SegmentedPickerStyle())

            List {
                ForEach(self.mysticCodes, id: \.id) { mysticCode in
                    NavigationLink(destination: MysticCodeDetailView(mysticCode: mysticCode)) {
                        CommonCellView(avatar: "mystic_code_\(mysticCode.id)_avatar_\(self.gender)", text: mysticCode.name)
                    }
                }
            }

        }.navigationBarTitle("魔术礼装")
    }
}

struct MysticCodeTableListView_Previews: PreviewProvider {
    static var previews: some View {
        MysticCodeTableListView()
    }
}
