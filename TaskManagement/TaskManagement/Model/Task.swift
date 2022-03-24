//
//  Task.swift
//  TaskManagement
//
//  Created by 곽희상 on 2022/03/24.
//

import SwiftUI

//Task Model
struct Task: Identifiable{
    var id = UUID().uuidString
    var taskTitle: String
    var taskDescription: String
    var taskDate: Date
}
