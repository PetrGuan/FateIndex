//
//  SettingsView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/5.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import StoreKit
import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("通用")) {
                    Button(action: {
                        if let url = URL(string: "https://fgo.wiki/w/%E6%96%B0%E4%BA%BA%E5%85%A5%E9%97%A8") {
                          UIApplication.shared.open(url)
                        }
                    }) {
                        Text("新手入门")
                    }

                    HStack {
                        Text("版本号")
                        Spacer()
                        Text("1.0")
                    }

                    Button(action: {
                        SKStoreReviewController.requestReview()
                    }) {
                        Text("App Store 点评")
                    }

                    Button(action: {
                        let email = "fateIndex@outlook.com"
                        if let url = URL(string: "mailto:\(email)") {
                          UIApplication.shared.open(url)
                        }
                    }) {
                        Text("问题反馈")
                    }
                }

                Section(header: Text("数据来源")) {
                    Text("Mooncell")
                    Text("VGtime")
                }
            }
            .navigationBarTitle("设置")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
