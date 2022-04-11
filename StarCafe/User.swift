//
//  User.swift
//  StarCafe
//
//  Created by 곽희상 on 2022/04/11.
//

import Foundation

struct User{
    let username: String
    let account: String
    
    static let shared = User(username: "릐상", account: "bia.dong")
    
}
