//
//  AppView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/5.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            ServantsView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("从者")
                }

            MasterView()
            .tabItem {
                Image(systemName: "person.crop.circle.fill")
                Text("御主")
            }

            MysticCodeDetailView()
            .tabItem {
                Image(systemName: "cube.box.fill")
                Text("材料")
            }

            ContentView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("设置")
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
