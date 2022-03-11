//
//  ContentView.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by 곽희상 on 2022/03/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 30) {
            
            Text("공지")
                .font(.system(size: 30))
                .fontWeight(.heavy)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
                
        }.frame(width: 300)
            .background(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
