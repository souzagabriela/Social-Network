//
//  TestAPIDelete.swift
//  Social-Network-Challenge
//
//  Created by Gabriela Souza Batista on 17/08/22.
//

import Foundation
import SwiftUI


class postAPI {
    static func createUser(name: String, email: String, password: String) async -> [User]{
        print(name)
        print(email)
        print(password)
        guard let url = URL(string: "http://localhost:8080/users") else {
            print("error, try again tomorrow")
            return []
        }
        
        // initiate your requestion
        var request = URLRequest(url: url)
        // configuratin: method, body & headers
        request.httpMethod = "POST"
        let body: [String: Any] = [
              "name": name,
              "email": email,
              "password": password
        ]
        print(body)
        
        // default value for header
        request.setValue("aplication/json", forHTTPHeaderField: "Content-Type")
        let urlRequest = request.httpBody = try? JSONSerialization.data(withJSONObject: body) //.fragmentsAllowed: Specifies that the parser allows top-level objects that aren’t arrays or dictionaries.
        urlRequest
        print(urlRequest)
        
        //make the request
            do {
                let (data, _) = try await URLSession.shared.data(for: request)
                let userModel = try JSONDecoder().decode(User.self, from:data)
                
                let response = String(data: data, encoding: .utf8)!
                // .utf8: This means that UTF-8 takes the code point for a given Unicode character and translates it into a string of binary. It also does the reverse, reading in binary digits and converting them back to characters
                print(response)
                return [userModel]
            }
            catch {
                print("esse é o erro", error)
            }
            return []
        }

}
