//
//  Data.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/6.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

func load<T: Decodable>(_ filename: String, withExtension extensionStr: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: extensionStr)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
