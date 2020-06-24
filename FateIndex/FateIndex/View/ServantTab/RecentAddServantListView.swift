//
//  RecentAddServantListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct RecentAddServantListView: View {
    @Environment(\.colorScheme) var colorScheme
    
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
                    NavigationLink(destination: ServantDetailView(servantId: "283")) {
                        VStack(alignment: .center) {
                            Image("servant_283_status_1")
                                .resizable()
                                .clipped()
                                .frame(width: 100, height: 100)
                                .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                            
                            Text("宇津见艾莉瑟")
                        }
                        .background(Color(hex: colorScheme == .dark ? 0x202023 : 0xEDEDEE))
                        .cornerRadius(12)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: ServantDetailView(servantId: "282")) {
                        VStack(alignment: .center) {
                            Image("servant_282_status_1")
                                .resizable()
                                .clipped()
                                .frame(width: 100, height: 100)
                                .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                            
                            Text("鬼女红叶")
                        }
                        .background(Color(hex: colorScheme == .dark ? 0x202023 : 0xEDEDEE))
                        .cornerRadius(12)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: ServantDetailView(servantId: "281")) {
                        VStack(alignment: .center) {
                            Image("servant_281_status_1")
                                .resizable()
                                .clipped()
                                .frame(width: 100, height: 100)
                                .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                            
                            Text("旅行者")
                        }
                        .background(Color(hex: colorScheme == .dark ? 0x202023 : 0xEDEDEE))
                        .cornerRadius(12)
                    }
                    .buttonStyle(PlainButtonStyle())
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
