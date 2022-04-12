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
            HomeView()
                .tabItem{
                    Tab.home.imageItem
                    Tab.home.tabTextItem
                }
            Text("Other")
                .tabItem{
                    Tab.other.imageItem
                    Tab.other.tabTextItem
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
