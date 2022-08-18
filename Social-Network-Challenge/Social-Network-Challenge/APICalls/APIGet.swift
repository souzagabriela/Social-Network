//
//  TestAPI.swift
//  Social-Network-Challenge
//
//  Created by Gabriela Souza Batista on 17/08/22.
//

import Foundation
import SwiftUI


class catchAPI {
    
    func allUsers () async -> [catchUser] {
        guard let url = URL(string: "http://localhost:8080/users") else {
            print("I think you can't get what you want")
            return []
        }
        
        //init request
        var request = URLRequest(url: url)
        // configuration: method, body, header
        request.httpMethod = "GET"
//        request.setValue("aplication/json", forHTTPHeaderField: "Content-Type")
        
        //make the request
            do {
                let (data, response) = try await URLSession.shared.data(from: url)
                let catchAllUser = try JSONDecoder().decode([catchUser].self, from: data)
                
                return catchAllUser
            }
            catch {
                print(error)
            }
            return []
        }

    func getAPIPost() async -> [allPost] {
        guard let url = URL(string: "http://localhost:8080/users") else {
            print("error, try again tomorrow")
            return []
    }


    // initiate your requestion
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            let catchAllPost = try JSONDecoder().decode([allPost].self, from: data)
            return catchAllPost
        }
        catch {
            print(error)
        }
        return []
    }

}
