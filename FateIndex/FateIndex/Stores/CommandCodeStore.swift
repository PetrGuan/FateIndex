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

    var commandCodes = [CommandCode]()

    init() {
        commandCodes = loadCommandCodes()
    }

    func loadCommandCodes() -> [CommandCode] {
        let commandCodeIds = ["command_code_64", "command_code_63", "command_code_62", "command_code_61", "command_code_60"]
        var commandCodes = [CommandCode]()
        commandCodeIds.forEach { commandCodes.append(load($0, withExtension: "json")) }

        return commandCodes
    }
}
