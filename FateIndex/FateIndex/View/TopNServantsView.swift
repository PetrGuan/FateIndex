//
//  TopNServantsView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/5.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

class TopServantsData: ObservableObject {
    @Published var dataIsLoaded: Bool = false
    @Published var topNServants = [TopNServant]()

    init() {
        loadData()
    }

    func loadData() {
        let t1 = TopNServant(id: "37", name: "诸葛孔明〔埃尔梅罗Ⅱ世〕", servantClass: "caster", portrait: "Servant_37")
        let t2 = TopNServant(id: "150", name: "梅林", servantClass: "caster", portrait: "Servant_150")
        let t3 = TopNServant(id: "215", name: "斯卡哈·斯卡蒂", servantClass: "caster", portrait: "Servant_215")
        let t4 = TopNServant(id: "90", name: "尼禄·克劳狄乌斯〔新娘〕", servantClass: "saber", portrait: "Servant_90")
        let t5 = TopNServant(id: "62", name: "玉藻前", servantClass: "caster", portrait: "Servant_62")

        let t6 = TopNServant(id: "1", name: "玛修·基列莱特", servantClass: "shield", portrait: "Servant_1")
        let t7 = TopNServant(id: "79", name: "冯·霍恩海姆·帕拉塞尔苏斯", servantClass: "caster", portrait: "Servant_79")
        let t8 = TopNServant(id: "249", name: "阿斯克勒庇俄斯", servantClass: "caster", portrait: "Servant_249")
        let t9 = TopNServant(id: "272", name: "超人俄里翁", servantClass: "archer", portrait: "Servant_272")

        topNServants.append(t1)
        topNServants.append(t2)
        topNServants.append(t3)
        topNServants.append(t4)
        topNServants.append(t5)

        topNServants.append(t6)
        topNServants.append(t7)
        topNServants.append(t8)
        topNServants.append(t9)
    }
}

struct TopNServantsView: View {
    @ObservedObject var topServantData = TopServantsData()

    var body: some View {
        VStack(alignment: .leading) {
            Text("Top 10 Servants".uppercased())
                .foregroundColor(Color(hex: 0x717171))
                //.font(.custom("Nunito", size: 12))
                .padding(EdgeInsets(top: 12, leading: 20, bottom: 0, trailing: 0))

            ScrollView(.horizontal, showsIndicators: false) {
                //Spacer()
                HStack(alignment: .top) {
                    ForEach(topServantData.topNServants, id: \.self) { servant in
                        ServantBoxView(topNServant: servant)
                    }
                }
                .frame(minHeight: 174)
                //Spacer()
            }

//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack(alignment: .top, spacing: 14) {
//                    ForEach(topServants, id: \.id) { topServant in
//                        Group {
//                            NavigationLink(destination: ServantDetailView(servant: topServant)) {
//                                ContentView()
//                            }
//                        }
//                    }
//                }
//                .frame(minHeight: 174)
//                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
//            }
        }
    }
}

struct TopNServantsView_Previews: PreviewProvider {
    static var previews: some View {
        TopNServantsView()
    }
}
