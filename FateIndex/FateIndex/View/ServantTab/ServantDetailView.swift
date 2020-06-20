//
//  ServantDetailView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/19.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct ServantDetailView: View {
    @State private var selectedSegment = 0

    private let segments = ["基础信息", "能力", "技能"]

    var body: some View {
        VStack {
            Picker("Numbers", selection: $selectedSegment.onChange(segmentChange)) {
                ForEach(0..<segments.count) { index in
                    Text(self.segments[index])
                        .tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())

            if selectedSegment == 0 {
                ScrollView {
                    VStack {
                        Divider()
                        Image("69px-5星")

                        Image("48px-金卡Foreigner")
                        Divider()

                        PageView([
                            Image("旅行者初始")
                            .resizable()
                            .clipped()
                            .cornerRadius(12),
                            Image("旅行者一破")
                            .resizable()
                            .clipped()
                            .cornerRadius(12),
                            Image("旅行者三破")
                            .resizable()
                            .clipped()
                            .cornerRadius(12),
                            Image("旅行者满破")
                            .resizable()
                            .clipped()
                            .cornerRadius(12),
                        ])
                        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.width * 724 / 512) // 512 724

                        Group {
                            HStack {
                                Spacer()

                                VStack {
                                    Text("画师")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("NOCO")
                                }

                                Spacer()

                                VStack {
                                    Text("声优")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("井口裕香")
                                }

                                Spacer()
                            }

                            Divider()

                            HStack {
                                Spacer()

                                VStack {
                                    Text("职阶")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("Foreigner")
                                }

                                Spacer()

                                VStack {
                                    Text("性别")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("男性")
                                }

                                Spacer()

                                VStack {
                                    Text("身高")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("随形态变化")
                                }

                                Spacer()
                            }

                            Divider()

                            HStack {
                                Spacer()

                                VStack {
                                    Text("体重")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("随形态变化")
                                }

                                Spacer()

                                VStack {
                                    Text("属性")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("中立·善")
                                }

                                Spacer()

                                VStack {
                                    Text("隐藏属性")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("星")
                                }

                                Spacer()
                            }

                            Divider()

                            HStack {
                                Spacer()

                                VStack {
                                    Text("筋力")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("E")
                                }

                                Spacer()

                                VStack {
                                    Text("耐久")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("C")
                                }

                                Spacer()

                                VStack {
                                    Text("敏捷")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("A+")
                                }

                                Spacer()
                            }

                            Divider()

                            HStack {
                                Spacer()

                                VStack {
                                    Text("魔力")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("B")
                                }

                                Spacer()

                                VStack {
                                    Text("幸运")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("A")
                                }

                                Spacer()

                                VStack {
                                    Text("宝具")
                                        .font(.headline)
                                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                                    Text("B")
                                }

                                Spacer()
                            }
                        }
                    }
                }
            }
            else {
                ContentView()
            }
        }
        .navigationBarTitle("旅行者")
    }

    private func segmentChange(_ tag: Int) {
        let selectionFeedback = UISelectionFeedbackGenerator()
        selectionFeedback.selectionChanged()
    }
}

struct ServantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ServantDetailView()
    }
}
