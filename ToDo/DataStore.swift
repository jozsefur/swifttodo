//
//  DataStore.swift
//  Todo
//
//  Created by Jozsef Basiszta on 2022. 02. 05..
//

import Foundation

class DataStore: ObservableObject {
    @Published var Todos:[Todo] = []
    
    init() {
        Todos = Todo.sampleData
    }
    
    func addItem(Todo: Todo) {
        self.Todos.append(Todo)
    }
    
    func updateItem(Todo: Todo) {
        guard let index = Todos.firstIndex(where: { $0.id == Todo.id }) else {
            return
        }
        
        Todos[index] = Todo
    }
    
    func deleteItem(at indexSet: IndexSet) {
        Todos.remove(atOffsets: indexSet)
    }
    
    func saveItems() {
        print("items", Todos)
    }
}
