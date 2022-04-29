//
//  MainScreen.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 17..
//

import Foundation
import XCTest

struct ThatMainScreen {
    static func todoListContains(name: String) {
        XCTAssert(TodoItems().all.contains(where: { (todo: TodoItem) -> Bool in
            todo.name == name
        }))
    }

    static func todoListDoesntContain(name: String) {
        XCTAssert(TodoItems().all.allSatisfy({ (todo: TodoItem) -> Bool in
            todo.name != name
        }))
    }
}
