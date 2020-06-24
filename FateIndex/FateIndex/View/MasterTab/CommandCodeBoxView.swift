//
//  CommandCodeBoxView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct CommandCodeBoxView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var commandCode: CommandCode
    
    var body: some View {
        HStack(alignment: .top) {
            Text("\(commandCode.name)")
                .font(.subheadline)
                .foregroundColor(.black)
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            
            Spacer()
            Image("command_code_\(commandCode.id)_whole")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .cornerRadius(12)
                //.shadow(radius: 10)
                .frame(width: 120, height: 205)
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        }
        .clipped()
        .cornerRadius(12)
        .background(Color(hex: colorScheme == .dark ? 0xFFFFFF : 0xEDEDEE))
    }
}

//struct CommandCodeBoxView_Previews: PreviewProvider {
//    static var previews: some View {
//        CommandCodeBoxView()
//    }
//}
