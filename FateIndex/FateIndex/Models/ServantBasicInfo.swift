//
//  ServantBasicInfo.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/22.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import Foundation

struct ServantBasicInfo: Codable {
    let id: String
    /// 姓名
    let name: String
    /// 性别
    let gender: String
    /// 身高
    let height: String
    /// 体重
    let weight: String
    /// 阵营
    let camp: String
    /// 地域
    let region: String
    /// 配卡
    let cards: [String]
    /// 出处
    let source: String
    /// 属性
    let attribute: String
    /// 特性
    let tokusei: [String]
    /// 昵称
    let nickNames: [String]
    /// 绘师
    let illustrator: String
    /// 配音
    let castVoice: String
    /// 入手方式
    let access: String
}
