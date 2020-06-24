//
//  ServantClassView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/5.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct ServantClassView: View {
    
    var servantClass: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(servantClass)
                .foregroundColor(Color.white)
                .padding(12)
            
            Spacer()
        }
        .frame(minWidth: 150, maxWidth: 150, minHeight: 256,  maxHeight: 256, alignment: .topLeading)
        .background(
            ZStack(alignment: .topLeading) {
                Image("\(servantClass.lowercased())_card")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 256)
                
                LinearGradient(gradient: Gradient(colors: [.black, .clear]), startPoint: .top, endPoint: .bottom)
                    .opacity(0.7)
                    .frame(width: 150, height: 256)
        })
            .padding(0)
            .cornerRadius(12)
    }
}

struct ServantClassView_Previews: PreviewProvider {
    static var previews: some View {
        ServantClassView(servantClass: "")
    }
}
