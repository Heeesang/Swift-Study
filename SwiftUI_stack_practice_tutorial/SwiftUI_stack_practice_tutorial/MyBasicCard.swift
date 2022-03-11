//
//  MyBasicCard.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by 곽희상 on 2022/03/11.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack(spacing: 20){
            
            Circle().frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                Text("유튜브")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(Color.white)
                    .padding(.bottom, 10)
                
                Text("8 AM ~ 10 AM")
                    .foregroundColor(Color.white)
            }
            
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
