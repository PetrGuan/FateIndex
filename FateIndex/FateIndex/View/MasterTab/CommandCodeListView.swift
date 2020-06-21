//
//  CommandCodeListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/7.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct CommandCodeListView: View {

    @State private var commandCodes = CommandCodeStore.shared.topFivecommandCodes

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .bottom) {
                Text("指令纹章".uppercased())
                    .font(.headline)
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))

                Spacer()

                NavigationLink(destination: SeeAllCommandCodeListView()) {
                    Text("查看全部")
                    .foregroundColor(Color(hex: 0xfe365e))
                }
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(self.commandCodes, id: \.id) { commandCode in
                        NavigationLink(destination: CommandCodeDetailView(commandCode: commandCode)) {
                            CommandCodeAlbumnFrameView(commandCode: commandCode)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .frame(minHeight: 174)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
        }
    }
}

struct CommandCodeListView_Previews: PreviewProvider {
    static var previews: some View {
        CommandCodeListView()
    }
}
