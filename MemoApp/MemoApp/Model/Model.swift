//
//  Model.swift
//  MemoApp
//
//  Created by 곽희상 on 2022/03/23.
//

import Foundation

class Memo {
    var content: String
    var insertDate: Date

    init(content: String) {
        self.content = content
        insertDate = Date()
    }
    
    static var dummyMemo = [
        
        Memo(content: "Yeah"),
        Memo(content: "오늘 할 일")
        
    ]
}
