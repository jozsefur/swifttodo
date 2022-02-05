//
//  DataStore.swift
//  ToDo
//
//  Created by Jozsef Basiszta on 2022. 02. 05..
//

import Foundation

class DataStore: ObservableObject {
    @Published var toDos:[ToDo] = []
    
    init() {
        toDos = ToDo.sampleData
    }
    
    func addItem(toDo: ToDo) {
        self.toDos.append(toDo)
    }
    
    func updateItem(toDo: ToDo) {
        
    }
    
    func deleteItem(at indexSet: IndexSet) {
        
    }
    
    func saveItems() {
        print("items", toDos)
    }
}
