//
//  TodoMainScreenTests.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 02. 05..
//

import XCTest

class TodoMainScreenTests: TodoTestCase {
    func testAppTitleShouldBeVisible() {
        executeTest(
            arrange: {},
            act: {
                Workflows.app.launch()
            },
            assert: {
                XCTAssertEqual(UIDescriptors.mainScreen.appTitle.label,
                               "SUT Todo App")
            }
        )
    }
    
    func testAddButtonShouldBeEnabled() {
        executeTest(
            arrange: {},
            act: {
                Workflows.app.launch()
            },
            assert: {
                XCTAssert(UIDescriptors.mainScreen.addNewItemButton.enabled)
            }
        )
    }
    
    func testAddButtonShouldOpenAddDialog() {
        executeTest(
            arrange: {
                Workflows.app.launch()
            },
            act: {
                Workflows.mainScreen.openAddDialog()
            },
            assert: {
                XCTAssert(UIDescriptors.addNewItemDialog.exists)
            }
        )
    }
}
