//
//  MysticCodeStore.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

final class MysticCodeStore {
    
    static let shared = MysticCodeStore()
    
    var mysticCodes = [MysticCode]()
    
    init() {
        mysticCodes = loadMysticCodes()
    }
    
    func loadMysticCodes() -> [MysticCode] {
        let commandCodeIds = ["mystic_code_15", "mystic_code_14", "mystic_code_13", "mystic_code_12", "mystic_code_11", "mystic_code_10", "mystic_code_9", "mystic_code_8", "mystic_code_7", "mystic_code_6", "mystic_code_5", "mystic_code_4", "mystic_code_3", "mystic_code_2", "mystic_code_1"]
        var mysticCodes = [MysticCode]()
        commandCodeIds.forEach { mysticCodes.append(load($0, withExtension: "json")) }
        
        return mysticCodes
    }
    
    func loadMysticCode(mysticCodeID: String) -> MysticCode {
        return load(mysticCodeID, withExtension: "json")
    }
}
