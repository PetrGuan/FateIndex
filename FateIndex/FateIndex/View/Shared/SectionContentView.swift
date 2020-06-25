//
//  SectionListView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/25.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct SectionContentView: View {
    let story: ServantStory

    var body: some View {
        VStack {
            Group {
                VStack {
                    HStack {
                        Text("从者详细")
                        Spacer()
                    }
                    .padding()

                    Text(story.detail)
                        .lineSpacing(5)
                        .padding()
                }

                Divider()

                VStack {
                    HStack {
                        Text("羁绊故事一")
                        Spacer()
                    }
                    .padding()

                    Text(story.story1)
                        .lineSpacing(5)
                        .padding()
                }

                Divider()

                VStack {
                    HStack {
                        Text("羁绊故事二")
                        Spacer()
                    }
                    .padding()

                    Text(story.story2)
                        .lineSpacing(5)
                        .padding()
                }
            }

            Divider()

            Group {
                VStack {
                    HStack {
                        Text("羁绊故事三")
                        Spacer()
                    }
                    .padding()

                    Text(story.story3)
                        .lineSpacing(5)
                        .padding()
                }

                Divider()

                VStack {
                    HStack {
                        Text("羁绊故事四")
                        Spacer()
                    }
                    .padding()

                    Text(story.story4)
                        .lineSpacing(5)
                        .padding()
                }

                Divider()

                VStack {
                    HStack {
                        Text("羁绊故事五")
                        Spacer()
                    }
                    .padding()

                    Text(story.story5)
                        .lineSpacing(5)
                        .padding()
                }

                VStack {
                    HStack {
                        Text("最终故事")
                        Spacer()
                    }
                    .padding()

                    Text(story.story6)
                        .lineSpacing(5)
                        .padding()
                }
            }
        }
    }
}

struct SectionListView_Previews: PreviewProvider {
    static var previews: some View {
        SectionContentView(story: ServantStore.shared.allServantStories()["2"]!)
    }
}
