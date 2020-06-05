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
                    Text("Servants")
                }

            ContentView()
            .tabItem {
                Image(systemName: "heart.fill")
                Text("Favorites")
            }

            ContentView()
            .tabItem {
                Image(systemName: "cube.box.fill")
                Text("Materials")
            }

            ContentView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Setttings")
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
