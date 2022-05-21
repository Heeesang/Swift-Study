//
//  Player.swift
//  MVVMPractice
//
//  Created by 곽희상 on 2022/05/15.
//

import UIKit

enum Position {
    case striker
    case midfielder
    case defenser
    case goalkeeper
}

struct Player {
    let name: String
    let birthday: Date
    let position: Position
    let image: UIImage
    
    init(name: String, birthday: Date, position: Position, image:UIImage){
        self.name = name
        self.birthday = birthday
        self.position = position
        self.image = image
    }
    
}
