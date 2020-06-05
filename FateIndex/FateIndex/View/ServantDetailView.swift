//
//  ServantDetailView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/5.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct ServantDetailView: View {
    var servant: TopNServant

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ServantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ServantDetailView(servant: TopNServant(id: "", name: "", servantClass: "", portrait: ""))
    }
}
