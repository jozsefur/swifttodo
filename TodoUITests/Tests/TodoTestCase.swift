//
//  TodoTestCase.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 17..
//

import Foundation
import XCTest

class TodoTestCase: XCTestCase {
    func executeTest(arrange: () throws -> Void, act: () throws -> Void, assert: () throws -> Void) {
        do {
            try arrange()
        } catch {
            print("Failure in test Arrange phase. \(error)")
            fatalError()
        }
        do {
            try act()
        } catch {
            print("Failure in test Act phase. \(error)")
            fatalError()
        }
        do {
            try assert()
        } catch {
            print("Failure in test Assert phase. \(error)")
            fatalError()
        }
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}


