//
//  Home.swift
//  TaskManagement
//
//  Created by 곽희상 on 2022/03/24.
//

import SwiftUI

struct Home: View {
    @StateObject var taskModel: TaskViewModel = TaskViewModel()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            LazyVStack(spacing: 15, pinnedViews: [.sectionHeaders]){
                
                Section {
                      
                    //current week
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        HStack(spacing: 10){
                        
                            ForEach(taskModel.currentWeek,id:\.self){ day in
                           
                                VStack(spacing: 10){
                                Text (taskModel.extractDate(date: day, format: "dd"))
                                    .font(.system(size: 15))
                                    .fontWeight(.semibold)
                           
                                Text (taskModel.extractDate(date: day, format: "EEE"))
                                    .font(.system(size: 14))
                                    
                                Circle()
                                        .fill(.white)
                                        .frame(width: 8, height: 8)
                                        .opacity(taskModel.isToday(date: day) ? 1:0)
                                }
                                .foregroundColor(.white)
                                .frame(width: 45, height:90)
                                .background(
                                
                                    ZStack{
                                        Capsule()
                                            .fill(.black)
                                    }
                                    
                                )
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                }header: {
                    HeaderView()
                }
                
            }
            
        }
    }

    func HeaderView()-> some View {
        
        HStack(spacing: 10){
            VStack(alignment: .leading, spacing: 10){
                Text(Date().formatted(date: .abbreviated, time: .omitted))
                    .foregroundColor(.gray)
                
                Text("Today")
                    .font(.largeTitle.bold())
            }
            .hLeading()
            
            Button{
                
            }label: {
                
                Image("girl")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
            }
        }
        .padding()
        .background(Color.white)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension View {
    
    func hLeading()->some View {
        self
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    func hTrailing()->some View {
        self
            .frame(maxWidth: .infinity, alignment: .trailing)
    }
    func hCenter()->some View {
        self
            .frame(maxWidth: .infinity, alignment: .center)
    }
}
