//
//  CommandCodeStore.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

final class CommandCodeStore {
    
    static let shared = CommandCodeStore()
    
    var allCommandCodes = [CommandCode]()
    var topFivecommandCodes = [CommandCode]()
    
    init() {
        allCommandCodes = loadCommandCodes()
        topFivecommandCodes = Array(allCommandCodes.prefix(5))
    }
    
    func loadCommandCodes() -> [CommandCode] {
        let ids = [Int](1...64)
        let commandCodeIds = ids.map { "command_code_\($0)" }
        var commandCodes = [CommandCode]()
        commandCodeIds.forEach { commandCodes.append(load($0, withExtension: "json")) }
        
        return commandCodes.reversed()
    }
}
