//
//  ContentView.swift
//  RandomuserAPI
//
//  Created by 곽희상 on 2022/04/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0...100,id: \.self){index in
            RandomuserItemView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
