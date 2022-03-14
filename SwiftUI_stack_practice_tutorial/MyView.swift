//
//  MyView.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by 곽희상 on 2022/03/13.
//

import SwiftUI

struct MyView: View {
    
    var title: String
    
    var bgColor: Color
    
    var body: some View {
        
        ZStack{
            bgColor
                .edgesIgnoringSafeArea(.top)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
        }
        
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "마이뷰", bgColor: Color.orange)
    }
}
