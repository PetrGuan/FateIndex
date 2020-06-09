//
//  MasterView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct MasterView: View {
    @State private var searchText : String = ""

    var body: some View {
        NavigationView {
            VStack {
                Divider()
                ZStack(alignment: .top) {
                    ScrollView(showsIndicators: false) {
                        VStack(alignment: .leading) {
                            CommandCodeListView()
                            Divider()
                            DavinciStoreCraftEssenceListView()
                            Divider()
                            MysticCodeListView()
                            Spacer()
                                .frame(height: 26)
                        }
                    }
                }
                .navigationBarTitle(Text("御主"))
            }
        }
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
