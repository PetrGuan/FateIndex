//
//  AppView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/5.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        UIKitTabView {
            ServantsView().tab(title: "从者", image: "person.2.fill")

            MasterView().tab(title: "御主", image: "person.crop.circle.fill")

            MysticCodeDetailView(mysticCode: MysticCode(id: "1", name: "迦勒底夏日", desc: "迦勒底夏日回忆活动期间，通关活动地图中随着活动主线剧情推进出现的「魔术礼装关卡·耀眼夏日」关卡。", access: ["迦勒底夏日回忆活动期间，通关活动地图中随着活动主线剧情推进出现的「魔术礼装关卡·耀眼夏日」关卡。", "迦勒底夏日回忆活动期间，通关活动地图中随着活动主线剧情推进出现的「魔术礼装关卡·耀眼夏日」关卡。"], skills: []))
                .tab(title: "材料", image: "cube.box.fill")

            ContentView()
                .tab(title: "设置", image: "gear")
        }

//        TabView {
//            ServantsView()
//                .tabItem {
//                    Image(systemName: "person.2.fill")
//                    Text("从者")
//                }
//
//            MasterView()
//            .tabItem {
//                Image(systemName: "person.crop.circle.fill")
//                Text("御主")
//            }
//
//            MysticCodeDetailView(mysticCode: MysticCode(id: "1", name: "迦勒底夏日", desc: "迦勒底夏日回忆活动期间，通关活动地图中随着活动主线剧情推进出现的「魔术礼装关卡·耀眼夏日」关卡。", access: ["迦勒底夏日回忆活动期间，通关活动地图中随着活动主线剧情推进出现的「魔术礼装关卡·耀眼夏日」关卡。", "迦勒底夏日回忆活动期间，通关活动地图中随着活动主线剧情推进出现的「魔术礼装关卡·耀眼夏日」关卡。"], skills: []))
//            .tabItem {
//                Image(systemName: "cube.box.fill")
//                Text("材料")
//            }
//
//            ContentView()
//                .tabItem {
//                    Image(systemName: "gear")
//                    Text("设置")
//                }
//        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
