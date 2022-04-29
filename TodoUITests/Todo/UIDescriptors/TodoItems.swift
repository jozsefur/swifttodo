//
//  TodoItems.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 28..
//

import Foundation
import XCTest

struct TodoItems {
    var firstCompleted: TodoItem? {
        get {
            self.all.first { (item: TodoItem) -> Bool in
                item.completed
            }
        }
    }
    
    var firstUncompleted: TodoItem? {
        get {
            self.all.first { (item: TodoItem) -> Bool in
                !item.completed
            }
        }
    }
    
    var all: Array<TodoItem> {
        get {
            xcuiElement!
                .descendants(matching: .button)
                .allElementsBoundByAccessibilityElement
                .map { (button: XCUIElement) -> TodoItem in
                    TodoItem(
                        id: button.identifier,
                        name: button.label,
                        completed: (button.value as! String).starts(with: "Completed todo item:")
                    )
                }
        }
    }

}

extension TodoItems: UIIdentifiable {
    var id: String { "todoList" }
}
