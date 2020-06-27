//
//  ServantSkillModel.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/27.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

struct ServantSkillModel: Codable {
    let name: String
    let avatar: String
    let level: String
    let coldDown: String
    let requirement: String
    let levelEffects: [LevelEffect]
    let stableEffects: [StableEffect]
}

struct LevelEffect: Codable {
    let effect: String
    let values: [String]
}

struct StableEffect: Codable {
    let effect: String
    let value: String
}

struct ServantNoblePhantasm: Codable {
    let card: String
    let name: String
    let hit: String
    let level: String
    let type: String
    let requirement: String
    let levelEffects: [LevelEffect]
    let stableEffects: [StableEffect]
    let chargeEffects: [LevelEffect]
}

struct ClassSkill: Codable {
    let avatar: String
    let name: String
    let level: String
    let effect: String
}

struct ServantSkillAndNoble: Codable {
    let servantId: String
    let noblePhantasm: ServantNoblePhantasm
    let updatedNoblePhantasm: ServantNoblePhantasm?
    let skills: [ServantSkillModel]
    let updatedSkills: [ServantSkillModel?]
    let classSkills: [ClassSkill]
}
