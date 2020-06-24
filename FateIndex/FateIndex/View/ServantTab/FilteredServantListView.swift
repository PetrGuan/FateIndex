//
//  FilteredServantListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/24.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct FilteredServantListView: View {
    let title: String
    let servantIds: [String]
    
    var body: some View {
        List {
            ForEach(servantIds) { servantId in
                NavigationLink(destination: ServantDetailView(servantId: servantId)) {
                    CommonCellView(avatar: "servant_avatar_\(servantId)", text: self.servantName(servantId: servantId), imageSize: CGSize(width: 60, height: 66))
                }
            }
        }
        .navigationBarTitle(title)
    }
    
    private func servantName(servantId: String) -> String {
        let basicInfo = ServantStore.shared.basicInfo(servantId: servantId)
        return basicInfo.name
    }
}

struct FilteredServantListView_Previews: PreviewProvider {
    static var previews: some View {
        FilteredServantListView(title: "阿尔托莉雅脸", servantIds: ServantStore.shared.altriaFaceList)
    }
}
