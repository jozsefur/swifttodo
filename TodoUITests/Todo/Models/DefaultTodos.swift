//
//  DefaultTodos.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 25..
//

import Foundation

struct Todo {
    var name: String
    var completed: Bool = false
    
    static var defaultTodos: [Todo] {
        [
            Todo(name: "minta app összerakása", completed: true),
            Todo(name: "szakdolgozat befejezése"),
            Todo(name: "záróvizsga")
        ]
    }
    
    static var firstCompletedFromDefaultTodos: Todo {
        defaultTodos.first(where: { $0.completed })!
    }
    
    static var firstUncompletedFromDefaultTodos: Todo {
        defaultTodos.first(where: { !$0.completed })!
    }
}
