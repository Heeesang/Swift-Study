//
//  MyVstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 곽희상 on 2022/03/07.
//

import SwiftUI

struct MyVstackView: View {
    
    var body: some View {
        VStack{
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 40))
            
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 40))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 40))
        }//VStack
            .background(Color.red)
    }
}


struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}
