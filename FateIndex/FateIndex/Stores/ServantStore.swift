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

    var servantStories = [String: ServantStory]()

    private let queue = DispatchQueue(label: "ServantStore", qos: .userInitiated, attributes: .concurrent)

    func fetchAllBasicInfo() {
        queue.async {
            let allBasicInfos = self.allBasicInfos()
            let allStories = self.allServantStories()

            DispatchQueue.main.async {
                self.basicInfos = allBasicInfos
                self.servantStories = allStories
            }
        }
    }

    func allBasicInfos() -> [String: ServantBasicInfo] {
        var basicInfos = [String: ServantBasicInfo]()

        var id = 1
        while id <= 283 {
            if AppConstants.filterLists.contains("\(id)") {
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

    func filterServantClass(servantClass: String) -> [String] {
        if servantClass.lowercased() == "saber" {
            return saberIds
        }
        else if servantClass.lowercased() == "archer" {
            return archerIds
        }
        else if servantClass.lowercased() == "lancer" {
            return lancerIds
        }
        else if servantClass.lowercased() == "rider" {
            return riderIds
        }
        else if servantClass.lowercased() == "caster" {
            return casterIds
        }
        else if servantClass.lowercased() == "assassin" {
            return assassinIds
        }
        else if servantClass.lowercased() == "berserker" {
            return berserkerIds
        }
        else if servantClass.lowercased() == "shield" {
            return shieldIds
        }
        else if servantClass.lowercased() == "ruler" {
            return rulerIds
        }
        else if servantClass.lowercased() == "avenger" {
            return avengerIds
        }
        else if servantClass.lowercased() == "alterego" {
            return alteregoIds
        }
        else if servantClass.lowercased() == "mooncancer" {
            return mooncancerIds
        }
        else {
            return foreignerIds
        }
    }

    func allServantStories() -> [String: ServantStory] {
        var stories = [String: ServantStory]()

        var id = 1
        while id <= 283 {
            if AppConstants.filterLists.contains("\(id)") {
                id += 1
                continue
            }

            stories["\(id)"] = load("servant-story-\(id)", withExtension: "json")
            id += 1
        }

        return stories
    }

    /// 活动赠送从者 id
    let givenList = ["283", "271", "264", "252", "243", "233", "225", "219", "211", "208", "197", "191", "190", "182", "174", "166", "162", "141", "138", "137", "133", "115", "111", "92", "73", "69", "61", "4"]

    /// 阿尔托莉雅脸
    let altriaFaceList = ["267", "265", "245", "243", "222", "219", "216", "209", "179", "175", "155", "141", "132", "129", "119", "106", "90", "86", "78", "76", "73", "68", "59", "5", "4", "3", "2"]

    /// 龙
    let dragonList = ["282", "266", "265", "225", "222", "213", "208", "179", "160", "155", "138", "134", "132", "129", "119", "112", "86", "78", "76", "73", "61", "56", "18", "6", "4", "3", "2"]

    /// 魔性
    let demonList = ["282", "266", "230", "225", "217", "184", "116", "112"]

    /// 其他性别
    let otherGenderList = ["280", "279", "278", "270", "250", "229", "143", "94", "10"]

    //**********************************************************************

    let saberIds = ["278", "270", "264", "254", "245", "234", "227", "223", "221", "213", "187", "176", "165", "160", "153", "138", "126", "123", "121", "101", "91", "90", "76", "72", "68", "10", "9", "8", "7", "6", "5", "4", "3", "2"]

    let archerIds = ["276", "272", "271", "269", "262", "255", "248", "246", "216", "212", "207", "200", "197", "184", "180", "157", "156", "142", "137", "131", "129", "125", "122", "105", "95", "84", "77", "69", "63", "60", "16", "15", "14", "13", "12", "11"]

    let lancerIds = ["283", "280", "279", "266", "256", "252", "232", "228", "217", "214", "196", "193", "186", "183", "181", "148", "146", "143", "141", "140", "134", "128", "119", "102", "88", "87", "85", "78", "71", "70", "64", "22", "21", "20", "19", "18", "17"]

    let riderIds = ["277", "274", "273", "263", "257", "253", "241", "231", "211", "206", "205", "182", "179", "172", "144", "132", "118", "115", "108", "99", "94", "73", "66", "65", "30", "29", "28", "27", "26", "25", "24", "23"]

    let casterIds = ["258", "249", "237", "236", "225", "215", "208", "203", "201", "194", "192", "175", "169", "150", "145", "136", "130", "127", "120", "113", "111", "104", "103", "100", "80", "79", "74", "67", "62", "61", "38", "37", "36", "35", "34", "33", "32", "31"]

    let assassinIds = ["267", "259", "243", "239", "235", "230", "218", "210", "199", "189", "188", "185", "177", "170", "159", "154", "139", "133", "124", "117", "112", "110", "109", "92", "86", "81", "75", "46", "45", "44", "43", "42", "41", "40", "39"]

    let berserkerIds = ["282", "261", "260", "251", "247", "226", "219", "202", "178", "174", "171", "162", "161", "155", "116", "114", "98", "97", "89", "82", "58", "57", "56", "55", "54", "53", "52", "51", "50", "49", "48", "47"]

    let shieldIds = ["1"]

    let rulerIds = ["265", "242", "233", "229", "173", "135", "93", "59"]

    let avengerIds = ["268", "250", "204", "158", "147", "107", "106", "96"]

    let alteregoIds = ["238", "224", "209", "191", "190", "167", "164", "163"]

    let mooncancerIds = ["244", "220", "166"]

    let foreignerIds = ["281", "275", "222", "198", "195"]
}
