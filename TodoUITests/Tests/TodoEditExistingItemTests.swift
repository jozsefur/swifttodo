//
//  TodoEditExistingItemTests.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 25..
//

import Foundation

class TodoEditExistingItemTests: TodoTestCase {
    func testCompletedItemShouldAppearCorrectly() {
        executeTest(
            arrange: {
                Workflows.app.launch()
            },
            act: {
                Workflows.mainScreen.editFirstCompletedItem()
            },
            assert: {
                Assert.thatAddNewDialog.contains(Todo.firstCompletedFromDefaultTodos)
            }
        )
    }
    
    func testUncompletedItemShouldAppearCorrectly() {
        executeTest(
            arrange: {
                Workflows.app.launch()
            },
            act: {
                Workflows.mainScreen.editFirstUncompletedItem()
            },
            assert: {
                Assert.thatAddNewDialog.contains(Todo.firstUncompletedFromDefaultTodos)
            }
        )
    }
}
