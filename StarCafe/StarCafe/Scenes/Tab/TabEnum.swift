//
//  TabEnum.swift
//  StarCafe
//
//  Created by 곽희상 on 2022/04/04.
//

import SwiftUI

enum Tab{
    case home
    case other
    
    var tabTextItem: Text {
        switch self {
        case .home: return Text("home")
        case .other: return Text("other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .other: return Image(systemName: "ellipsis")
        }
    }
}
