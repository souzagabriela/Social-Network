//
//  LogInScreen.swift
//  Social-Network-Challenge
//
//  Created by Gabriela Souza Batista on 18/08/22.
//

import SwiftUI



struct LogInScreen: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    // design grephic is my passion 
    var body: some View {
        NavigationView {
            ZStack {
                VStack (alignment: .center) {
                    Text("Register")
                        .font(.system(size: 34, weight: .medium, design: .default))
                        .background() // try some color later
                        .padding(.bottom, 60)
                    VStack (alignment: .leading) {
                        Text("NOME")
                            .font(.system(size: 17))
                            .bold()
                        TextField("NOME", text: $name)
//                            .frame(width: , height: 20, alignment: .leading)
                            .font(.system(size: 15, design: .rounded))
                            .padding()
                            .background(Color.mint)
                            .textFieldStyle(.plain)
                            .cornerRadius(4)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    
                    VStack (alignment: .leading){
                        Text("EMAIL")
                            .font(.system(size: 17))
                            .bold()
                        TextField("EMAIL", text: $email)
                            .font(.system(size: 15, design: .rounded))
                            .padding()
                            .background(Color.mint)
                            .cornerRadius(4)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    
                    VStack (alignment: .leading) {
                        Text("SENHA")
                            .font(.system(size: 17))
                            .bold()
                        SecureField("SENHA", text: $password)
                            .font(.system(size: 15,  design: .rounded))
                            .padding()
                            .background(Color.mint)
                            .cornerRadius(4)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            
                    }
                    Button(action: {
                        Task {
                            await postAPI.createUser(name: name, email: email, password: password)
        }
                    }, label: {
                        Text("Continue")
                    })
                    .buttonStyle(.bordered)
                    .background(Color.white)
                    .padding()
                    Spacer()
                    
                    
                   
                    
                }.padding()
            }
        }
    }
}

struct LogInScreen_Previews: PreviewProvider {
    static var previews: some View {
        LogInScreen()
    }
}
