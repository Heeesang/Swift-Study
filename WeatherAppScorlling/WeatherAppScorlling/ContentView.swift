//
//  ContentView.swift
//  WeatherAppScorlling
//
//  Created by 곽희상 on 2022/03/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{proxy in
            
            let topEdge = proxy.safeAreaInsets.top
            
            Home(topEdge: topEdge)
                .ignoresSafeArea(.all, edges: .top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
