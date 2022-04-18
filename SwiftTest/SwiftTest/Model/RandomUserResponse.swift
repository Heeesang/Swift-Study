//
//  RandomuserData.swift
//  SwiftTest
//
//  Created by 곽희상 on 2022/04/18.
//

import Foundation

struct RandomUser: Codable, Identifiable {
    var id = UUID()
    var name: Name
    var photo: Photo
    private enum CodingKeys: String, CodingKey{
        case name = "name"
        case photo = "picture"
    }
}

struct Name:Codable {
    var title: String
    var first: String
    var last: String
}

struct Photo: Codable {
    var large: String
    var medium: String
    var thumbnail: String
}

struct Info: Codable{
    var seed: String
    var resultsCount: Int
    var page: Int
    var version: String
    private enum CodingKeys: String, CodingKey{
        case seed = "seed"
        case resultsCount = "results"
        case page = "page"
        case version = "version"
    }
    
}
struct RandomUserResponse: Codable {
    var results: [RandomUser]
    var info: Info
    private enum CodingKeys: String, CodingKey{
        case results, info
    }
}
