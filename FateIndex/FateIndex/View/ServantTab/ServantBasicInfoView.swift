//
//  ServantBasicInfoView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/22.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct ServantBasicInfoView: View {

    let servantBasicInfo: ServantBasicInfo

    var body: some View {
        VStack {
            Divider()
            Image("69px-5星")

            Image("48px-金卡Foreigner")
            Divider()

            PageView(imagePageView())
            .frame(width: min(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height), height: min(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height) * 724 / 512) // 512 724

            Group {
                Divider()

                HStack {
                    Spacer()

                    VStack {
                        Text("昵称")
                            .font(.headline)
                            .fixedSize(horizontal: true, vertical: false)
                            .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        Text(concatenateNickNames(nickNames: servantBasicInfo.nickNames))
                    }

                    Spacer()
                }

                Divider()

                HStack {
                    Spacer()

                    VStack {
                        Text("画师")
                            .font(.headline)
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        Text(servantBasicInfo.illustrator)
                    }

                    Spacer()

                    VStack {
                        Text("声优")
                            .font(.headline)
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        Text(servantBasicInfo.castVoice)
                    }

                    Spacer()
                }

                Divider()

                HStack {
                    Spacer()

                    VStack {
                        Text("身高")
                            .font(.headline)
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        Text(servantBasicInfo.height)
                    }

                    Spacer()

                    VStack {
                        Text("体重")
                            .font(.headline)
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        Text(servantBasicInfo.weight)
                    }

                    Spacer()
                }

                Divider()

                HStack {
                    Spacer()

                    VStack {
                        Text("地域")
                            .font(.headline)
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        Text(servantBasicInfo.region)
                    }

                    Spacer()

                    VStack {
                        Text("出处")
                            .font(.headline)
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        Text(servantBasicInfo.source)
                    }

                    Spacer()
                }

                Divider()
            }

            Group {
                HStack {
                    Image(mapCardImage(card: servantBasicInfo.cards[0]))
                    .resizable()
                    .clipped()
                    .frame(width: 65, height: 65)

                    Image(mapCardImage(card: servantBasicInfo.cards[1]))
                    .resizable()
                    .clipped()
                    .frame(width: 65, height: 65)

                    Image(mapCardImage(card: servantBasicInfo.cards[2]))
                    .resizable()
                    .clipped()
                    .frame(width: 65, height: 65)

                    Image(mapCardImage(card: servantBasicInfo.cards[3]))
                    .resizable()
                    .clipped()
                    .frame(width: 65, height: 65)

                    Image(mapCardImage(card: servantBasicInfo.cards[4]))
                    .resizable()
                    .clipped()
                    .frame(width: 65, height: 65)
                }

                Divider()
            }
        }
    }

    private func imagePageView() -> [Image] {
        var images = [Image]()
        var i = 1
        while i <= 10 {
            if let _ = UIImage(named: "servant-\(servantBasicInfo.id)-\(i)") {
                var image = Image("servant-\(servantBasicInfo.id)-\(i)")
                image = image.resizable()
                images.append(image)
            }
            else {
                break
            }
            i += 1
        }

        return images
    }

    private func mapCardImage(card: String) -> String {
        if card == "1" {
            return "Quick"
        }
        else if card == "2" {
            return "Arts"
        }
        else {
            return "Buster"
        }
    }

    private func concatenateNickNames(nickNames: [String]) -> String {
        var nickName = ""
        for (index, nick) in nickNames.enumerated() {
            if index == nickNames.count - 1 {
                nickName += "\(nick)"
            }
            else {
                nickName += "\(nick) "
            }
        }

        return nickName
    }
}

struct ServantBasicInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ServantBasicInfoView(servantBasicInfo: ServantStore.shared.allBasicInfos()["215"]!)
    }
}
