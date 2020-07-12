//
//  MaterialDetailView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/7/12.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct MaterialDetailView: View {

    let material: MaterialModel
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Image(material.avatar)
                    .resizable()
                    .cornerRadius(12)
                    .frame(width: 60, height: 65)

                    VStack {
                        ForEach(material.briefPlaces, id: \.self) { place in
                            Text(place)
                        }
                    }
                }
                .padding()

                VStack {
                    Text("按AP效率")
                        .font(.headline)
                        .foregroundColor(Color(hex: colorScheme == .dark ? 0x5AFAFE : 0xA3DDAA))
                        .padding()

                    HStack {
                        Text("地点")
                            .frame(width: 100, height: 50)
                        Text("AP")
                            .frame(width: 40, height: 50)
                        Text("掉落均值")
                            .frame(width: 70, height: 50)
                        Text("每个AP")
                            .frame(width: 70, height: 50)
                    }

                    ForEach(material.apEfficiency, id: \.self) { apEfficiency in
                        HStack {
                            Text(apEfficiency.place)
                                .frame(width: 100, height: 50)
                            Text(apEfficiency.ap)
                                .frame(width: 40, height: 50)
                            Text(apEfficiency.averageDrop)
                                .frame(width: 70, height: 50)
                            Text(apEfficiency.averageAp)
                                .frame(width: 70, height: 50)
                        }
                    }
                }
                .background(Color(hex: colorScheme == .dark ? 0x292C2C : 0xFFFFFF))

                VStack {
                    Text("按掉落数")
                        .font(.headline)
                        .foregroundColor(Color(hex: colorScheme == .dark ? 0x5AFAFE : 0xA3DDAA)) 
                        .padding()

                    HStack {
                        Text("地点")
                            .frame(width: 100, height: 50)
                        Text("AP")
                            .frame(width: 40, height: 50)
                        Text("掉落均值")
                            .frame(width: 70, height: 50)
                        Text("每个AP")
                            .frame(width: 70, height: 50)
                    }

                    ForEach(material.dropEfficiency, id: \.self) { apEfficiency in
                        HStack {
                            Text(apEfficiency.place)
                                .frame(width: 100, height: 50)
                            Text(apEfficiency.ap)
                                .frame(width: 40, height: 50)
                            Text(apEfficiency.averageDrop)
                                .frame(width: 70, height: 50)
                            Text(apEfficiency.averageAp)
                                .frame(width: 70, height: 50)
                        }
                    }
                }
                .background(Color(hex: colorScheme == .dark ? 0x292C2C : 0xFFFFFF))
            }
        }
    }
}

struct MaterialDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialDetailView(material: MaterialStore.shared.allMaterials()["龙之牙"]!)
    }
}
