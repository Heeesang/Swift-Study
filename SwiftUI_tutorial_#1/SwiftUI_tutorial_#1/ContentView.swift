//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 곽희상 on 2022/03/07.
//

import SwiftUI

struct ContentView: View {
    
    //@State 갑의 변화를 감지
    @State
    private var isActivated: Bool = false
    
    var body: some View {
    
        NavigationView{
            VStack{
                HStack{
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                }//HStack
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.blue : Color.black)
                .onTapGesture {
                    
                    withAnimation{
                    self.isActivated.toggle()
                    }
                }//Hstack
                
                NavigationLink(destination: MyTextView(isActivated: $isActivated)){
                    Text("네비게이션")
                        .fontWeight(.bold)
                        .padding()
                        .font(.system(size: 40))
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                        .cornerRadius(30)
                }.padding(.top, 50)
            }//Vstack
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
