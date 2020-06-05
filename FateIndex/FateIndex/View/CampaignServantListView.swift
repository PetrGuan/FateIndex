//
//  CampaignServantListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/5.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

class CampaignServantData: ObservableObject {
    @Published var campaignServants = [CampaignServant]()

    init() {
        loadData()
    }

    func loadData() {
        let cs1 = CampaignServant(id: "0", campaignName: "淑女·莱妮丝事件簿", campaignImg: "campaign_0")
        let cs2 = CampaignServant(id: "1", campaignName: "圣诞节2019 Holy·Samba·Night ～降雪遗迹与少女骑士～", campaignImg: "campaign_1")
        let cs3 = CampaignServant(id: "2", campaignName: "复刻：冥界的圣诞快乐 轻量版", campaignImg: "campaign_2")
        let cs4 = CampaignServant(id: "3", campaignName: "神秘之国的ONILAND!! ～鬼王与神威的黄金～", campaignImg: "campaign_3")

        campaignServants.append(cs1)
        campaignServants.append(cs2)
        campaignServants.append(cs3)
        campaignServants.append(cs4)
    }
}

struct CampaignServantListView: View {

    @ObservedObject var campaignServants = CampaignServantData()

    var body: some View {
        VStack(alignment: .leading) {
            Text("Recent Campign Given Servants".uppercased())
                .foregroundColor(Color(hex: 0x717171))
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 14) {
                    ForEach(self.campaignServants.campaignServants, id: \.self) { campaignServant in
                        CampaignServantView(campaignServant: campaignServant)
                    }
                }
                .frame(minHeight: 138)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
        }
    }
}

struct CampaignServantListView_Previews: PreviewProvider {
    static var previews: some View {
        CampaignServantListView()
    }
}
