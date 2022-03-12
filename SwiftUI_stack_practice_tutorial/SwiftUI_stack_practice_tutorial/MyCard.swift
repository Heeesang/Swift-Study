//
//  MyCard.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by 곽희상 on 2022/03/12.
//

import SwiftUI

struct MyCard: View {
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    var body: some View {
        HStack(spacing: 20){
            
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(Color.white)
                    .padding(.bottom, 10)
                
                Text("\(start) ~ \(end)")
                    .foregroundColor(Color.white)
            }
            
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
    }
}

