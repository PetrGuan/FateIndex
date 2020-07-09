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
            
            NavigationLink(destination: FilteredServantListView(title: "猛兽", servantIds: ["231", "205", "202", "158", "148", "58"])) {
                Text("猛兽")
                    .foregroundColor(Color(hex: 0xfe365e))
            }
            
            Divider()
            
            NavigationLink(destination: FilteredServantListView(title: "人类的威胁", servantIds: ["275", "264", "198", "195", "191", "190"])) {
                Text("人类的威胁")
                    .foregroundColor(Color(hex: 0xfe365e))
            }
            
            Divider()
            
            NavigationLink(destination: FilteredServantListView(title: "魔兽", servantIds: ["231", "158", "147", "128", "62", "58", "53"])) {
                Text("魔兽")
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
