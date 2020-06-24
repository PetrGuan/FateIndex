//
//  CommandCodeAlbumnFrameView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct CommandCodeAlbumnFrameView: View {
    
    var commandCode: CommandCode
    
    var body: some View {
        VStack {
            Text(self.commandCodeHeadline())
                .font(.headline)
            CommandCodeBoxView(commandCode: commandCode)
        }
        .frame(minWidth: 350, idealWidth: 350, maxWidth: 350, minHeight: 300, idealHeight: 300, maxHeight: 300, alignment: .topLeading)
    }
    
    func commandCodeHeadline() -> String {
        if let firtSlice = commandCode.lore.split(separator: "\n").first {
            return String(firtSlice.prefix(10))
        }
        else {
            return String(commandCode.lore.prefix(10))
        }
    }
}

//struct CommandCodeAlbumnFrameView_Previews: PreviewProvider {
//    static var previews: some View {
//        CommandCodeAlbumnFrameView()
//    }
//}
