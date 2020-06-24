//
//  CommandCodeDetailView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/14.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct CommandCodeDetailView: View {
    var commandCode: CommandCode
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                VStack(alignment: .leading) {
                    Spacer()
                    Text(commandCode.name)
                        .foregroundColor(Color.white)
                        .padding(12)
                }
                .frame(minWidth: 150, maxWidth: 150, minHeight: 256,  maxHeight: 256, alignment: .topLeading)
                .background(
                    ZStack(alignment: .topLeading) {
                        Image("command_code_\(commandCode.id)_whole")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 256)
                })
                    .padding(0)
                    .cornerRadius(12)
                
                Divider()
                
                VStack {
                    Spacer()
                    Text("画师 \(commandCode.illustrator)")
                        .lineSpacing(6)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minWidth: 350, idealWidth: 350, maxWidth: 350)
                    Spacer()
                    Text(commandCode.rarityStars())
                        .lineSpacing(6)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minWidth: 350, idealWidth: 350, maxWidth: 350)
                    Spacer()
                    Text(commandCode.wayToGet)
                        .lineSpacing(6)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minWidth: 350, idealWidth: 350, maxWidth: 350)
                    Spacer()
                }
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                
                Divider()
                
                Image(commandCode.avatar)
                    .resizable()
                    .clipped()
                    .cornerRadius(6)
                    .frame(width: 55, height: 55)
                
                
                VStack {
                    Text(commandCode.effect)
                        .lineSpacing(6)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        //.frame(minWidth: 350, idealWidth: 350, maxWidth: 350)
                        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                    
                    Divider()
                    
                    Text(commandCode.lore)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(6)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minWidth: 350, idealWidth: 350, maxWidth: 350)
                }
                
            }
        }
        .navigationBarTitle(commandCode.name)
    }
}

struct CommandCodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CommandCodeDetailView(commandCode: CommandCode(id: "64", name: "Vive la France", wayToGet: "活动『Fate/Requiem』棋盘游戏默示录奖励", rarity: 5, illustrator: "花田", effect: "被刻印的指令卡暴击星集中度提升100%＋当使用被刻印的指令卡进行攻击时，己方全体的HP回复100", avatar: "特攻", lore: "「每个人都爱着我。\n而我也最爱大家了。\n即便有时候会刺痛我的心\n我也依然爱着你们。\n\n因为我是王妃。\n\n给予天空光辉。\n给予大地恩惠。\n给予你幸福―――Vive La France」"))
    }
}
