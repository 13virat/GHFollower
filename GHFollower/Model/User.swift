//
//  User.swift
//  GHFollower
//
//  Created by Mac pro on 01/08/25.
//

import Foundation

struct User: Codable{
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
