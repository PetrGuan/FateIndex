//
//  MysticCodeDetailView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/9.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct MysticCodeDetailView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("mystic_code_1_avatar")
                    .resizable()
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

                List {
                    Text("解说")
                        .font(.headline)
                    Text("达·芬奇工房特制，对热带地区用的装备, 虽说就是泳装，但却是具备了战斗功能的魔术礼装")
                        .font(.callout)

                    Text("技能")
                    .font(.headline)

                    NavigationLink(destination: ContentView()) {
                        CommonCellView()
                    }

                    NavigationLink(destination: ContentView()) {
                        CommonCellView()
                    }

                    NavigationLink(destination: ContentView()) {
                        CommonCellView()
                    }

                    Text("获得方法")
                    .font(.headline)
                    
                    Text("迦勒底夏日回忆活动期间，通关活动地图中随着活动主线剧情推进出现的「魔术礼装关卡·耀眼夏日」关卡。")
                    .font(.callout)

                    Text("复刻：迦勒底夏日回忆活动期间，通关活动地图中随着活动主线剧情推进出现的「魔术礼装关卡·耀眼夏日」关卡。")
                    .font(.callout)
                }
            }
            .edgesIgnoringSafeArea(.top)

            .navigationBarTitle("明亮夏日")
        }
    }
}

struct MysticCodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MysticCodeDetailView()
    }
}
