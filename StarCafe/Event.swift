//
//  Event.swift
//  StarCafe
//
//  Created by 곽희상 on 2022/04/04.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let description: String
    
    static let sample: [Event] = [
        Event(image: Image("coffee"), title: "비아동 한정 메뉴", description: "꿀맛..!"),
        Event(image: Image("coffee"), title: "여름 한정판 메뉴", description: "꿀맛..!")
    ]
}
