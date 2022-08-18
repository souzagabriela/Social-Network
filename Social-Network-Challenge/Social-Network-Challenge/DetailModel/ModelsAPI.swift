//
//  ModelsAPI.swift
//  Social-Network-Challenge
//
//  Created by Gabriela Souza Batista on 18/08/22.
//

import Foundation

struct doUser: Codable {
    let id: UUID
    let name: String
    let email: String
    let password: String
}

struct catchUser: Decodable {
    let id: String
    let name: String
    let email: String
    let avatar: String?
}

struct allPost: Decodable, Identifiable {
    let id: String
    let content: String
    let user_id: String
    let created_at: String
    let updated_at: String
}

struct User: Codable {
    let token: String?
    let user: doUser    
}
