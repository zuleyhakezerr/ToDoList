//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Züleyha on 29.03.2024.
//

import SwiftUI
import FirebaseCore
@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
