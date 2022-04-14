//
//  TodoFormViewModel.swift
//  Todo
//
//  Created by Jozsef Basiszta on 2022. 02. 05..
//

import Foundation

class TodoFormViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var completed: Bool = false
    var id: String?
    
    var isBeingUpdated: Bool {
        return id != nil
    }
    
    var isDisabled: Bool {
        return name.isEmpty
    }
    
    init() {
    }
    
    init(editTodo: Todo) {
        self.name = editTodo.name
        self.completed = editTodo.completed
        self.id = editTodo.id
    }
}
