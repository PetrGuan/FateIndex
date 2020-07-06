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
    
    init() {
        craftEssences = loadCraftEssences()
    }
    
    func loadCraftEssences() -> [CraftEssences] {
        let craftIds = ["craftEssence_80", "craftEssence_178", "craftEssence_242", "craftEssence_330", "craftEssence_861", "craftEssence_910", "craftEssence_988", "craftEssence_1012", "craftEssence_1080", "craftEssence_1121", "craftEssence_1149", "craftEssence_1214"]
        var craftEssences = [CraftEssences]()
        craftIds.forEach { craftEssences.append(load($0, withExtension: "json")) }
        
        return craftEssences
    }

    private let queue = DispatchQueue(label: "CraftEssenceStore", qos: .userInitiated, attributes: .concurrent)

    var craftEssenceDict = [String: CraftEssences]()

    func fetchAllCraftEssences() {
        let basicInfos = ServantStore.shared.allBasicInfos()
        var craftEssenceIds = [String]()
        for (_, element) in basicInfos {
            if element.id != "1" {
                craftEssenceIds.append(element.craftEssenceId)
            }
        }

        queue.async {
            let tmp = self.allCraftEssences(craftEssenceIds: craftEssenceIds)

            DispatchQueue.main.async {
                self.craftEssenceDict = tmp
            }
        }
    }

    func allCraftEssences(craftEssenceIds: [String]) -> [String: CraftEssences] {
        var craftEssences = [String: CraftEssences]()

        for craftEssenceId in craftEssenceIds {
            craftEssences["\(craftEssenceId)"] = load("craftEssence_\(craftEssenceId)", withExtension: "json")
        }

        return craftEssences
    }
}
