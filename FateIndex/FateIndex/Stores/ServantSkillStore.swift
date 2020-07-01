//
//  ServantSkillStore.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/27.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

final class ServantSkillStore {
    static let shared = ServantSkillStore()

    var servantSkills = [String: ServantSkillAndNoble]()

    private let queue = DispatchQueue(label: "ServantSkillStore", qos: .userInitiated, attributes: .concurrent)

    func fetchAllServantSkills() {
        queue.async {
            let allServantSkills = self.allServantSkills()

            DispatchQueue.main.async {
                self.servantSkills = allServantSkills
            }
        }
    }

    func allServantSkills() -> [String: ServantSkillAndNoble] {
        var servantSkills = [String: ServantSkillAndNoble]()

        var id = 1
        while id <= 283 {
            if AppConstants.filterLists.contains("\(id)") {
                id += 1
                continue
            }

            servantSkills["\(id)"] = load("servant-skillAndPhantasm-\(id)", withExtension: "json")
            id += 1
        }

        return servantSkills
    }
}
