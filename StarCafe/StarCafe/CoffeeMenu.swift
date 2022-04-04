//
//  CoffeeMenu.swift
//  StarCafe
//
//  Created by 곽희상 on 2022/04/04.
//

import SwiftUI

struct CoffeeMenu: Identifiable {
    let image: Image
    let name: String
    
    let id = UUID()
    
    static let sample: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "바닐라 라떼"),
        CoffeeMenu(image: Image("coffee"), name: "민트초코"),
        CoffeeMenu(image: Image("coffee"), name: "카페모카"),
        CoffeeMenu(image: Image("coffee"), name: "핫초코"),
        CoffeeMenu(image: Image("coffee"), name: "바나나킥"),
    ]
}
