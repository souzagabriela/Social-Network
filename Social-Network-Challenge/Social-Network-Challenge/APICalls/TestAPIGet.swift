////
////  TestAPIGet.swift
////  Social-Network-Challenge
////
////  Created by Gabriela Souza Batista on 17/08/22.
////
//
//import Foundation
//import SwiftUI
//import UIKit
//
//
//func testApiGet() {
//    guard let url = URL(string: "http://localhost:8080/users") else {
//        print("somethings wrong")
//        return
//    }
//    
//    //init request
//    var request = URLRequest(url: url)
//    // configuration: method, body, header
//    request.httpMethod = "GET"
//    request.setValue("aplication/json", forHTTPHeaderField: "Content-Type")
//    
//    //make the request
//    let getTask = URLSession.shared.dataTask(with: request) { data, res, error in
//        guard let data = data, error == nil else {
//            return
//        }
//        do {
//            let response = try JSONDecoder().decode(getUser.self, from: data)
//            print("uhul, \(response)")
//        }
//        catch {
//            print(error)
//        }
//    }
//    getTask.resume()
//    
//}
//
//struct getUser: Codable {
//    let id: String
//    let name: String
//    let email: String
//    let avatar: String
//}
