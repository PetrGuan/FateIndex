//
//  MaterialStore.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/7/10.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

final class MaterialStore {

    static let allNames = [
        "英雄之证", "凶骨", "龙之牙", "虚影之尘", "愚者之锁", "万死的毒针", "魔术髓液", "宵泣之铁桩", "振荡火药", "世界树之种", "鬼魂提灯", "八连双晶", "蛇之宝玉", "凤凰羽毛", "无间齿轮", "禁断书页", "人工生命体幼体", "陨蹄铁", "大骑士勋章", "追忆的贝壳", "枯淡勾玉", "永远结冰", "巨人的戒指", "极光之钢", "闲古铃", "祸罪之箭头", "光银之冠", "神脉灵子", "混沌之爪", "蛮神心脏", "龙之逆鳞", "精灵根", "战马的幼角", "血之泪石", "黑兽脂", "封魔之灯", "智慧之圣甲虫像", "起源的胎毛", "咒兽胆石", "奇奇神酒", "晓光炉心", "九十九镜", "真理之卵", "煌星的碎片", "悠久果实"
    ]

    static let shared = MaterialStore()

    var materials = [String: MaterialModel]()

    private let queue = DispatchQueue(label: "MaterialStore", qos: .userInitiated, attributes: .concurrent)

    func fetchAll() {
        queue.async {
            let allmaterials = self.allMaterials()
            DispatchQueue.main.async {
                self.materials = allmaterials
            }
        }
    }

    func allMaterials() ->  [String: MaterialModel] {
        var materials = [String: MaterialModel]()

        for fileName in MaterialStore.allNames {
            let model: MaterialModel = load(fileName, withExtension: "json")
            materials[fileName] = model
        }

        return materials
    }

    func filterMaterials(keyword: String, limit: Int = 5) ->  [MaterialModel] {
        var materials = [MaterialModel]()

        for (_, material) in self.materials {
            if material.rarity == keyword {
                materials.append(material)
            }
        }

        materials.sort { $0.description.count > $1.description.count }

        return Array(materials.prefix(limit))
    }
}
