//
//  CraftEssences.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/6.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

/// 礼装
struct CraftEssences: Codable {
    let id: String
    // 名字
    let name: String
    // 画师
    let illustrator: String
    // 稀有度
    let rarity: Int
    let cost: Int
    let minAndMaxHP: String
    let minAndMaxATK: String
    // 效果
    let effect: String
    // 效果图片
    let effectImg: String
    // 民间传说
    let lore: String
    
    // 羁绊从者 ID
    let bondServantID: String
    
    func rarityStars() -> String {
        var stars = ""
        for _ in 1...rarity {
            stars.append("⭐️")
        }
        
        return stars
    }
}
