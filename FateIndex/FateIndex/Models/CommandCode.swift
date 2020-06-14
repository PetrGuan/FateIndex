//
//  CommandCode.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

/// 指令纹章
struct CommandCode: Codable {
    let id: String
    // 名字
    let name: String
    // 入手方式
    let wayToGet: String
    // 稀有度
    let rarity: Int
    // 画师
    let illustrator: String
    // 效果
    let effect: String
    // 技能图标
    let avatar: String
    // 民间传说
    let lore: String

    func rarityStars() -> String {
        var stars = ""
        for _ in 1...rarity {
            stars.append("⭐️")
        }
        
        return stars
    }
}
