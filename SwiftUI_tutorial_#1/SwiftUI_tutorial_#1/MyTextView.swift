//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 곽희상 on 2022/03/07.
//

import SwiftUI

struct MyTextView: View {
    
    @State
    private var index: Int = 0
    
    // 데이터 연동

    @Binding
    var isActivated: Bool
        
    //생성자
    init(isActivated: Binding<Bool> =
            .constant(false)) {
                _isActivated = isActivated
    }
    
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange,
    ]
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: 100)
            Text("활성화 \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: 100)
                .foregroundColor(self.isActivated ? Color.mint : Color.yellow)
            
            Spacer()
            
        }.background(backgroundColors[index])
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                print("배경 아이템이 클릭 되었다.")
                
                if(self.index == self.backgroundColors.count - 1){
                    self.index = 0
                } else {
                    self.index += 1
                }
            }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
