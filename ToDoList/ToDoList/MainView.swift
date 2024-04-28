//
//  ContentView.swift
//  ToDoList
//
//  Created by Züleyha on 29.03.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
       NavigationView {
           
           LoginView()
        }
        .padding()
    }
    
}
struct ContentView_Previews {
    static var previews:some View {
        MainView()
    }
}
#Preview {
    MainView()
}
