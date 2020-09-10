//
//  ContentView.swift
//  MuseSounds
//
//  Created by Fernando Serrano on 9/6/20.
//  Copyright © 2020 panda_tech. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            HomaPage()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "house").font(.system(size: 16, weight: .regular))
                        Text("Home")
                    }
                }
                .tag(0)
            SearchPage()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass").font(.system(size: 16, weight: .regular))
                        Text("Search")
                    }
                }
                .tag(1)
            YourLibrary()
                .font(.title)
                .tabItem{
                    VStack{
                        Image(systemName: "tray.full").font(.system(size: 16, weight: .regular))
                        Text("Your Library")
                    }
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
