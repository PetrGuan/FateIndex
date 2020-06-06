//
//  CraftEssenceStore.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/6.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

final class CraftEssenceStore {

    static let shared = CraftEssenceStore()

    var craftEssences = [CraftEssences]()

    private let queue = DispatchQueue(label: "CraftEssenceStore", qos: .userInitiated)

    init() {
//        queue.async {
//            let temp = self.loadCraftEssences()
//            DispatchQueue.main.async {
//                self.craftEssences = temp
//            }
//        }

        craftEssences = loadCraftEssences()
    }

    func loadCraftEssences() -> [CraftEssences] {
        let craftIds = ["craftEssence_80", "craftEssence_178", "craftEssence_242", "craftEssence_330", "craftEssence_861", "craftEssence_910", "craftEssence_988", "craftEssence_1012", "craftEssence_1080", "craftEssence_1121", "craftEssence_1149"]
        var craftEssences = [CraftEssences]()
        craftIds.forEach { craftEssences.append(load($0, withExtension: "json")) }

        return craftEssences
    }
}
