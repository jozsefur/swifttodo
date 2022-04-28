//
//  DefaultTodos.swift
//  TodoUITests
//
//  Created by hero on 2022. 04. 25..
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
}
