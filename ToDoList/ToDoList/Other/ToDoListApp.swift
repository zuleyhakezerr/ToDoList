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
    class ToDoItem {
        var title: String
        var isChecked: Bool
        
        init(title: String) {
            self.title = title
            self.isChecked = false
        }
    }

    class ToDoListViewController: UITableViewController {
        var toDoItems = [ToDoItem]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Örnek öğeleri listeye ekleyin
            toDoItems.append(ToDoItem(title: "Alışveriş yap"))
            toDoItems.append(ToDoItem(title: "Spor yap"))
            toDoItems.append(ToDoItem(title: "Kitap oku"))
        }
        
        // Table view datasource methods
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return toDoItems.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
            let item = toDoItems[indexPath.row]
            cell.textLabel?.text = item.title
            cell.accessoryType = item.isChecked ? .checkmark : .none
            return cell
        }
        
        // Table view delegate methods
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            toDoItems[indexPath.row].isChecked = !toDoItems[indexPath.row].isChecked
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
    }

    // Uygulama başlangıç noktası
    class AppDelegate: UIResponder, UIApplicationDelegate {
        var window: UIWindow?
    }

    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
           MainView()
        }
    }
}
