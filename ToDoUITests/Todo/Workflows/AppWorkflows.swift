//
//  AppWorkflows.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 17..
//

import Foundation
import XCTest

struct AppWorkflows {
    static func launch() {
        if XCUIApplication().exists {
            XCUIApplication().terminate()
        }
        XCUIApplication().launch()
        XCTAssertTrue(XCUIApplication().exists)
    }
}
