//
//  FightCharacterFilterListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct FightCharacterFilterListView: View {
    var body: some View {
        List {
            Text("战斗特性筛选")
                .font(.headline)

            NavigationLink(destination: ContentView()) {
                Text("阿尔托莉雅脸")
                .foregroundColor(Color(hex: 0xfe365e))
            }

            NavigationLink(destination: ContentView()) {
                Text("龙")
                .foregroundColor(Color(hex: 0xfe365e))
            }

            NavigationLink(destination: ContentView()) {
                Text("所爱之人")
                .foregroundColor(Color(hex: 0xfe365e))
            }
        }
        .frame(minHeight: 200)
    }
}

struct FightCharacterFilterListView_Previews: PreviewProvider {
    static var previews: some View {
        FightCharacterFilterListView()
    }
}
