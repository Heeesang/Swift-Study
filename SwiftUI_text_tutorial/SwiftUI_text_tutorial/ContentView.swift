//
//  ContentView.swift
//  SwiftUI_text_tutorial
//
//  Created by 곽희상 on 2022/03/10.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
    
    var today = Date()
    
    var body: some View {
    
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .padding(20)
                .lineLimit(nil)
                .lineSpacing(10)
                .shadow(color: Color.red, radius: 4, x: 0, y: 10)
                .multilineTextAlignment(.center)
                .background(Color.yellow)
                .cornerRadius(20)
                .padding()
            
            Text("안녕하세요")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘 날짜입니다. : \(today, formatter: ContentView.dateFormat)")
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
