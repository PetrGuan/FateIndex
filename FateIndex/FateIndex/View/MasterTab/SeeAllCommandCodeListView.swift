//
//  SeeAllCommandCodeListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/11.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct SeeAllCommandCodeListView: View {

    let allCommandCodes = CommandCodeStore.shared.allCommandCodes

    var body: some View {
        List {
            HStack(alignment: .top) {
                Image("SeeAllCommandCodeWall")
                .resizable()
                .clipped()
                .cornerRadius(8)
                .frame(width: 140, height: 140)

                VStack(alignment: .leading) {
                    Text("芙芙——")
                    Text("Command Code")
                    .foregroundColor(Color(hex: 0xfe365e))
                }
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))


                Spacer()
            }

            Text("指令纹章 Command Code，这是不同于概念礼装的，新的从者支援术式。将指令纹章刻印至指令卡，使用该指令卡时将会得到指令纹章附加的效果。不同于概念礼装，指令纹章的优点是不消耗Cost，但反之，它会绑定在一骑从者的指令卡上。")
            .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))

            ForEach(allCommandCodes, id: \.id) { commandCode in
                CommonCellView(avatar: "command_code_avatar_\(commandCode.id)", text: commandCode.name, imageSize: CGSize(width: 60, height: 66))

            }
        }
    .navigationBarTitle("指令纹章图鉴")
    }
}

struct SeeAllCommandCodeListView_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllCommandCodeListView()
    }
}
