//
//  ContentView.swift
//  StarCafe
//
//  Created by 곽희상 on 2022/04/01.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            Text("Home")
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            Text("Other")
                .tabItem{
                    Image(systemName: "ellipsis")
                    Text("Other")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
