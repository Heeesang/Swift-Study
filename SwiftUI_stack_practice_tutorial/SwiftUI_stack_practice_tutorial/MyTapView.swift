//
//  MyTapView.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by 곽희상 on 2022/03/13.
//

import SwiftUI

struct MyTapView: View {
    var body: some View {
        
        TabView{
            
//            Text("1번")
//                .fontWeight(.black)
//                .font(.largeTitle)
            
            MyView(title: "1번", bgColor: Color.orange) 
            .tabItem{
                    Image(systemName: "airplane")
                    Text("1번")
                }.tag(0)
            
//            Text("2번")
//                .fontWeight(.black)
//                .font(.largeTitle)
            
            MyView(title: "2번", bgColor: Color.blue)
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("2번")
                }.tag(1)
//
//            Text("3번")
//                .fontWeight(.black)
//                .font(.largeTitle)

            MyView(title: "3번", bgColor: Color.yellow)
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("3번")
                }.tag(2)
        }
    }
}

struct MyTapView_Previews: PreviewProvider {
    static var previews: some View {
        MyTapView()
    }
}
