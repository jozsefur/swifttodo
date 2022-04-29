//
//  TodoItem.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 28..
//

import Foundation

struct TodoItem: Button {
    let id: String
    let name: String
    let completed: Bool
    
    init(id: String, name: String, completed: Bool) {
        self.id = id
        self.name = name
        self.completed = completed
    }
}
