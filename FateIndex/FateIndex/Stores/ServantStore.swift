//
//  ServantStore.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/22.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

final class ServantStore {
    static let shared = ServantStore()

    var basicInfos = [String: ServantBasicInfo]()

    private let queue = DispatchQueue(label: "ServantStore", qos: .userInitiated, attributes: .concurrent)

    func fetchAllBasicInfo() {
        queue.async {
            let all = self.allBasicInfos()

            DispatchQueue.main.async {
                self.basicInfos = all
            }
        }
    }

    func allBasicInfos() -> [String: ServantBasicInfo] {
        let filterLists = ["240", "168", "152", "151", "149", "83"]

        var basicInfos = [String: ServantBasicInfo]()

        var id = 1
        while id <= 283 {
            if filterLists.contains("\(id)") {
                id += 1
                continue
            }

            basicInfos["\(id)"] = loadBasicInfo(basicInfoName: "servant-basicInfo-\(id)")
            id += 1
        }

        return basicInfos
    }

    func loadBasicInfo(basicInfoName: String) -> ServantBasicInfo {
        return load(basicInfoName, withExtension: "json")
    }

    func basicInfo(servantId: String) -> ServantBasicInfo {
        if let basicInfo = basicInfos[servantId] {
            return basicInfo
        }
        else {
            let basicInfo = loadBasicInfo(basicInfoName: "servant-basicInfo-\(servantId)")
            basicInfos[servantId] = basicInfo
            return basicInfo
        }
    }
}
