//
//  ToDoFormViewModel.swift
//  ToDo
//
//  Created by hero on 2022. 02. 05..
//

import Foundation

class ToDoFormViewModel: ObservableObject {
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
    
    init(editToDo: ToDo) {
        self.name = editToDo.name
        self.completed = editToDo.completed
        self.id = editToDo.id
    }
}
