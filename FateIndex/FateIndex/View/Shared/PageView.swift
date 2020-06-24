//
//  PageView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/19.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView([Image("mystic_code_1_avatar").aspectRatio(3/2, contentMode: .fit)
            , Image("mystic_code_2_avatar")
                .aspectRatio(3/2, contentMode: .fit), Image("mystic_code_3_avatar")
                    .aspectRatio(3/2, contentMode: .fit)])
    }
}
