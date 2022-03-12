//
//  MyProjectCard.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by 곽희상 on 2022/03/11.
//

import SwiftUI

struct MyProjectCard: View {
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            Text("곽희상 유튜브 프로젝트")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("10 AM ~ 11 AM")
                .foregroundColor(.secondary)
                .padding(.bottom, 10)
            HStack{
                Circle().frame(width: 50, height: 50)
                
                Circle().frame(width: 50, height: 50)
                
                Circle().frame(width: 50, height: 50)
                
                Spacer()
                
                
                Button(action:{
                 
                    self.shouldShowAlert = true
                    
                }){
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("일림창입니다."))
                }
                       
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
