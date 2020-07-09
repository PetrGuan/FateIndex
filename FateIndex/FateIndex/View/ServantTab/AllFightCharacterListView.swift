//
//  AllFightCharacterListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/25.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct AllFightCharacterListView: View {
    var body: some View {
        List {
            Section(header: Text("属性")) {
                Group {
                    NavigationLink(destination: FilteredServantListView(title: "秩序", servantIds: ServantStore.shared.filterAttribute(keyword: "秩序"))) {
                        CustomRedText(title: "秩序")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "中立", servantIds: ServantStore.shared.filterAttribute(keyword: "中立"))) {
                        CustomRedText(title: "中立")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "混沌", servantIds: ServantStore.shared.filterAttribute(keyword: "混沌"))) {
                        CustomRedText(title: "混沌")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "善", servantIds: ServantStore.shared.filterAttribute(keyword: "善"))) {
                        CustomRedText(title: "善")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "中庸", servantIds: ServantStore.shared.filterAttribute(keyword: "中庸"))) {
                        CustomRedText(title: "中庸")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "恶", servantIds: ServantStore.shared.filterAttribute(keyword: "恶"))) {
                        CustomRedText(title: "恶")
                    }
                }
            }

            Section(header: Text("其他特性")) {
                Group {
                    NavigationLink(destination: FilteredServantListView(title: "龙", servantIds: ServantStore.shared.filter(keyword: "龙"))) {
                        CustomRedText(title: "龙")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "骑乘", servantIds: ServantStore.shared.filter(keyword: "骑乘"))) {
                        CustomRedText(title: "骑乘")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "神性", servantIds: ServantStore.shared.filter(keyword: "神性"))) {
                        CustomRedText(title: "神性")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "猛兽", servantIds: ServantStore.shared.filter(keyword: "猛兽"))) {
                        CustomRedText(title: "猛兽")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "魔性", servantIds: ServantStore.shared.filter(keyword: "魔性"))) {
                        CustomRedText(title: "魔性")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "王", servantIds: ServantStore.shared.filter(keyword: "王"))) {
                        CustomRedText(title: "王")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "天地(拟似除外)", servantIds: ServantStore.shared.filter(keyword: "天/地从者"))) {
                        CustomRedText(title: "天地(拟似除外)")
                    }
                }

                Group {
                    NavigationLink(destination: FilteredServantListView(title: "罗马", servantIds: ServantStore.shared.filter(keyword: "罗马"))) {
                        CustomRedText(title: "罗马")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "亚瑟", servantIds: ServantStore.shared.filter(keyword: "亚瑟"))) {
                        CustomRedText(title: "亚瑟")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "阿尔托莉雅脸", servantIds:  ServantStore.shared.filter(keyword: "阿尔托莉雅脸"))) {
                        CustomRedText(title: "阿尔托莉雅脸")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "所爱之人", servantIds: ServantStore.shared.filter(keyword: "所爱之人"))) {
                        CustomRedText(title: "所爱之人")
                    }
                }

                Group {
                    NavigationLink(destination: FilteredServantListView(title: "希腊神话男性", servantIds: ServantStore.shared.filter(keyword: "希腊神话系男性"))) {
                        CustomRedText(title: "希腊神话男性")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "人类的威胁", servantIds: ServantStore.shared.filter(keyword: "人类威胁"))) {
                        CustomRedText(title: "人类的威胁")
                    }

                    NavigationLink(destination: FilteredServantListView(title: "阿尔戈号相关", servantIds: ServantStore.shared.filter(keyword: "阿尔戈"))) {
                        CustomRedText(title: "阿尔戈号相关")
                    }
                }
            }
        }
    }
}

struct AllFightCharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        AllFightCharacterListView()
    }
}
