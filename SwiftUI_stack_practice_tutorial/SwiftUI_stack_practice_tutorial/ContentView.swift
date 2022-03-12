//
//  ContentView.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by 곽희상 on 2022/03/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing){
            
            VStack(alignment:.leading, spacing: 0){
                
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                    
                }
                .padding(20)
                Text("곽희상")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .padding(.horizontal, 20)
                    
                ScrollView{
                    VStack{
                        MyProjectCard()
                        MyBasicCard()
                        MyCard(icon: "tray.fill", title: "책상 정리하기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                        
                        
                    }
                    .padding()
                    .shadow(radius: 3)
                    }
            }
            
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width: 60, height: 60)
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                )
                .padding(.trailing, 10)
                .shadow(radius: 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
