//
//  TodoEditExistingItemTests.swift
//  TodoUITests
//
//  Created by hero on 2022. 04. 25..
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
            }
        )
    }
}
