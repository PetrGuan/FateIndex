//
//  GivenServantListView.swift
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
        let cs1 = CampaignServant(id: "243", campaignName: "格蕾", campaignImg: "campaign_servant_243")
        let cs2 = CampaignServant(id: "233", campaignName: "魁札尔·科亚特尔〔桑巴／圣诞〕", campaignImg: "campaign_servant_233")
        let cs3 = CampaignServant(id: "225", campaignName: "酒呑童子", campaignImg: "campaign_servant_225")
        let cs4 = CampaignServant(id: "219", campaignName: "贞德〔Alter〕", campaignImg: "campaign_servant_219")
        let cs5 = CampaignServant(id: "197", campaignName: "阿蒂拉·the·San〔ta〕", campaignImg: "campaign_servant_197")

        campaignServants.append(cs1)
        campaignServants.append(cs2)
        campaignServants.append(cs3)
        campaignServants.append(cs4)
        campaignServants.append(cs5)
    }
}

struct GivenServantListView: View {

    @ObservedObject var campaignServants = CampaignServantData()

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .bottom) {
                Text("活动赠送".uppercased())
                    .font(.headline)
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))

                Spacer()

                Button(action: {
                    print("")
                }) {
                    Text("查看全部")
                        .foregroundColor(Color(hex: 0xfe365e))
                }
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 14) {
                    ForEach(self.campaignServants.campaignServants, id: \.self) { campaignServant in
                        GivenServantView(campaignServant: campaignServant)
                    }
                }
                .frame(minHeight: 282)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
        }
    }
}

struct GivenServantListView_Previews: PreviewProvider {
    static var previews: some View {
        GivenServantListView()
    }
}
