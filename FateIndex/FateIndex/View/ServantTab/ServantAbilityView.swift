//
//  ServantAbilityView.swift
//  FateIndex
//
//  Created by Peter-Guan on 2020/6/20.
//  Copyright © 2020 FoxHound-Peter-Guan. All rights reserved.
//

import SwiftUI

struct ServantAbilityView: View {
    var body: some View {
        VStack {
            Group {
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("能力")
                            .font(.headline)
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 8))
                        Text("ATK")
                            .font(.headline)
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        Text("HP")
                            .font(.headline)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("基础")
                            .font(.headline)
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 8))
                        Text("1615")
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        Text("2286")
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("满级")
                            .font(.headline)
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 8))
                        Text("10450")
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        Text("15592")
                    }
                    
                    Spacer()
                }
                
                Divider()
                
                Text("Hit 信息")
                    .font(.headline)
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Quick")
                            .font(.headline)
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        Text("3 Hits (16,33,51)")
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Arts")
                            .font(.headline)
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        Text("C")
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Buster")
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

struct ServantAbilityView_Previews: PreviewProvider {
    static var previews: some View {
        ServantAbilityView()
    }
}
