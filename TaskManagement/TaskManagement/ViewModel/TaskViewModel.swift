//
//  TaskViewModel.swift
//  TaskManagement
//
//  Created by 곽희상 on 2022/03/24.
//

import SwiftUI

class TaskViewModel: ObservableObject {
    
//Sample Task
    @Published var storedTasks: [Task] = [
        
        Task(taskTitle: "Meeting", taskDescription: "Discuss team task for the day", taskDate: .init(timeIntervalSince1970: 1641645497)),
        Task(taskTitle: "Icon set", taskDescription: "Edit icons for team task for next week", taskDate: .init(timeIntervalSince1970: 1641649097)),
        Task(taskTitle: "Prototype", taskDescription: "Make and send prototype", taskDate: .init(timeIntervalSince1970: 1641652697)),
        Task(taskTitle: "Check asset", taskDescription: "Start checking the assets", taskDate: .init(timeIntervalSince1970: 1641656297)),
        Task(taskTitle: "Team party", taskDescription: "Make fun and with team mates", taskDate: .init(timeIntervalSince1970: 1641661897)),
        Task(taskTitle: "Client Meeting", taskDescription: "Explain project to client", taskDate: .init(timeIntervalSince1970: 1641641897)),
        Task(taskTitle: "Next Project", taskDescription: "Discuss next project with team", taskDate: .init(timeIntervalSince1970: 1641677897)),
        Task(taskTitle: "App Proposal", taskDescription: "Meet client for next App Proposal", taskDate: .init(timeIntervalSince1970: 1641681497)),
        
    ]
    
    // Current week days
    @Published var currentWeek: [Date] = []
    
    //Current Day
    @Published var currentDay: Date = Date()
    
    init(){
        fetchCurrentWeek()
    }
    
    
    func fetchCurrentWeek(){
        
        let today = Date()
        let calendar = Calendar.current
        
        let week = calendar.dateInterval(of: .weekOfMonth, for: today)
        
        guard let firstWeekDay = week?.start else {
            return
        }
        
        (1...7).forEach{ day in
            
            if let weekday = calendar.date(byAdding: .day,value: day, to: firstWeekDay){ 
                currentWeek.append(weekday)
            }
        }
    }
    //Extracting Date
    func extractDate(date: Date, format: String) -> String{
        let formatter = DateFormatter()
        
        formatter.dateFormat = format
        
        return formatter.string(from: date)
    }
    
    //Checking
    func isToday(date:Date)->Bool{
        
        let calendar = Calendar.current
        
        return calendar.isDate(currentDay, inSameDayAs: date)
    }
}
