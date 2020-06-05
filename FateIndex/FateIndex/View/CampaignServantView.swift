//
//  CampaignServantView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/5.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct CampaignServantView: View {

    var campaignServant: CampaignServant

    var body: some View {
        Button(
            action: {
                print("hello")
        },
            label: {
                VStack {
                    Spacer()

                    Text(campaignServant.campaignName)
                        .foregroundColor(Color.white)
                        .padding(12)
                }
                .frame(minWidth: 200, idealWidth: 200, maxWidth: 200, minHeight: 138, idealHeight: 138, maxHeight: 138, alignment: .topLeading)
                .background(
                    ZStack(alignment: .topLeading) {

                        Image(campaignServant.campaignImg)
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(minWidth: 200, idealWidth: 200, maxWidth: 200, minHeight: 138, idealHeight: 138, maxHeight: 138, alignment: .topLeading)

                        LinearGradient(gradient: Gradient(colors: [.black, .clear]), startPoint: .bottom, endPoint: .top)
                            .opacity(0.8)
                            .frame(minWidth: 200, idealWidth: 200, maxWidth: 200, minHeight: 138, idealHeight: 138, maxHeight: 138, alignment: .topLeading)
                })
                    .padding(0)
                    .cornerRadius(20)
        })
//            .frame(minWidth: 200, idealWidth: 200, maxWidth: 200, minHeight: 138, idealHeight: 138, maxHeight: 138, alignment: .topLeading)
        .frame(minWidth: 200, idealWidth: 200, maxWidth: 200, minHeight: 138, idealHeight: 138, maxHeight: 138, alignment: .topLeading)
    }
}

struct CampaignServantView_Previews: PreviewProvider {
    static var previews: some View {
        CampaignServantView(campaignServant: CampaignServant(id: "", campaignName: "", campaignImg: ""))
    }
}
