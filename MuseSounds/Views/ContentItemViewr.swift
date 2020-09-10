//
//  ContentItemViewr.swift
//  MuseSounds
//
//  Created by Fernando Serrano on 9/6/20.
//  Copyright © 2020 panda_tech. All rights reserved.
//

import SwiftUI

struct ContentItemViewr: View {
    var body: some View {
        ZStack{
            VStack {
                Spacer()
                    .frame(height:50)
                Image(systemName:"music.note")
                Text("Title")
                Text("Subtitle")
                Spacer()
            }
            VStack{
                ScrollView{
                    HStack {
                        Spacer()
                            .frame(height:200)
                            .background(Color.red.opacity(0.35))
                    }
                    VStack{
                        ForEach(0..<50){ indicator in
                            HStack{
                                Text("\(indicator)").foregroundColor(.white)
                                Spacer()
                            }
                            
                        }
                    }.background(Color.black)
                }.background(Color.yellow.opacity(0.3))
            }
        }
    }
}

struct ContentItemViewr_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemViewr()
    }
}
