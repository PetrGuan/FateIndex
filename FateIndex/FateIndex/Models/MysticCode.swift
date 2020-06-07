//
//  MysticCode.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

/// 御主装备
struct MysticCode: Codable {
    let id: String
    /// 名字
    let name: String
    /// 装备介绍
    let desc: String
    /// 入手方法
    let access: [String]
}

struct MysticCodeSkill: Codable {
    /// 技能名称
    let skillName: String
    /// 技能图片
    let avatar: String
    /// 冷却
    let countDown: String
    let lvEffects: [MysticCodeSkillLevelEffect]
    let stableEffects: [String]
}

struct MysticCodeSkillLevelEffect: Codable {
    let effectDesc: String
    let effects: [String]
}
