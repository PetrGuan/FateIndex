//
//  CampaignServant.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/5.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

struct CampaignServant: Codable, Hashable, Identifiable {
    let id: String
    let campaignName: String
    let campaignImg: String
}
