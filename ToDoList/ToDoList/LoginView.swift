//
//  LoginView.swift
//  ToDoList
//
//  Created by Züleyha on 25.04.2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            //Header
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.pink)
                VStack{
                    Text("TO DO LİST")
                        .font(.system(size:30))
                        .foregroundColor(Color.white)
                    Text("Get Things Done")
                        .foregroundColor(Color.white)
                }
            }
            .frame(width:UIScreen.main.bounds.width*3
                   , height: 300)
            //Login Form
            
            //Create Account
            
        }
    }
}

#Preview {
    LoginView()
}
