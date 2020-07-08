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
        VStack {
            HStack {
                Text("特性筛选")
                    .font(.headline)
                
                Spacer()

                NavigationLink(destination: AllFightCharacterListView().navigationBarTitle("特性筛选")) {
                    Text("查看全部")
                    .foregroundColor(Color(hex: 0xfe365e))
                }
            }
            .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
            
            
            Divider()
            
            NavigationLink(destination: FilteredServantListView(title: "阿尔托莉雅脸", servantIds: ServantStore.shared.filter(keyword: "阿尔托莉雅脸"))) {
                Text("阿尔托莉雅脸")
                    .foregroundColor(Color(hex: 0xfe365e))
            }
            
            Divider()
            
            NavigationLink(destination: FilteredServantListView(title: "龙", servantIds: ServantStore.shared.filter(keyword: "龙"))) {
                Text("龙")
                    .foregroundColor(Color(hex: 0xfe365e))
            }
            
            Divider()
            
            NavigationLink(destination: FilteredServantListView(title: "魔性", servantIds: ServantStore.shared.filter(keyword: "魔性"))) {
                Text("魔性")
                    .foregroundColor(Color(hex: 0xfe365e))
            }
            
            Divider()
        }
        .frame(minHeight: 200)
    }
}

struct FightCharacterFilterListView_Previews: PreviewProvider {
    static var previews: some View {
        FightCharacterFilterListView()
    }
}
