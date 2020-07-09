//
//  MaterialModel.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/7/9.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

struct MaterialModel: Codable {
    let name: String
    let avatar: String
    let description: String
    let briefPlaces: [String]
    let apEfficiency: [MaterialEfficiencyModel]
    let dropEfficiency: [MaterialEfficiencyModel]
}

struct MaterialEfficiencyModel: Codable {
    let place: String
    let ap: String
    let averageDrop: String
    let averageAp: String
}
