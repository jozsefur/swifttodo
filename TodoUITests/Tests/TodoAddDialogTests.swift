//
//  TodoAddDialogTests.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 17..
//

import Foundation

class TodoAddDialogTests: TodoTestCase {
    func testCancelEditDialogShouldDismissDialog() {
        let newItemName = "Új kihívást keresni"
        executeTest(
            arrange: {
                Workflows.app.launch()
                Workflows.mainScreen.openAddDialog()
                Workflows.addNewItemDialog.fillDialogWith(name: newItemName)
            },
            act: {
                Workflows.addNewItemDialog.cancelAddDialog()
            },
            assert: {
                Assert.thatMainScreen.todoListDoesntContain(name: newItemName)
            }
        )
    }
    
    func testSaveButtonShouldBeDisabledWhenNameIsEmpty() {
        executeTest(
            arrange: {
                Workflows.app.launch()
            },
            act: {
                Workflows.mainScreen.openAddDialog()
            },
            assert: {
                Assert.thatAddNewDialog.addButtonDisabled()
            }
        )
    }
    
    func testSaveButtonShouldSaveItem() {
        let newItemName = "Új kihívást keresni"
        executeTest(
            arrange: {
                Workflows.app.launch()
                Workflows.mainScreen.openAddDialog()
                Workflows.addNewItemDialog.fillDialogWith(name: newItemName)
            },
            act: {
                Workflows.addNewItemDialog.saveEditedItem()
            },
            assert: {
                Assert.thatMainScreen.todoListContains(name: newItemName)
            }
        )
    }
}
