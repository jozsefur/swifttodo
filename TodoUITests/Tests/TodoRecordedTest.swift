//
//  TodoRecordedTest.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 12..
//

import Foundation
import XCTest

class TodoRecordedTest: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    
func testRecorded() {
    let app = XCUIApplication()
    app.launch()
    app.navigationBars["_TtGC7SwiftUI19UIHosting"].otherElements.containing(.button, identifier:"todoPlusButton").element.tap()
    app.tables.textFields["todoNameInput"].tap()
    app.tables.textFields["todoNameInput"].typeText("Új bejegyzés")
    app.navigationBars["Todo"].buttons["addButton"].tap()
    app.tables["todoList"].cells["Új bejegyzés"].children(matching: .other).element(boundBy: 0).tap()
}
}
