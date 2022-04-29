//
//  MainScreenWorkflows.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 17..
//

import Foundation
import XCTest

struct MainScreenWorkflows {
    static func openAddDialog() {
        XCTAssertFalse(UIDescriptors.addNewItemDialog.exists)
        UIDescriptors.mainScreen.addNewItemButton.tap()
    }
    
    static func editFirstCompletedItem() {
        XCTAssertFalse(UIDescriptors.addNewItemDialog.exists)
        let firstItem = TodoItems().firstCompleted
        XCTAssertNotNil(firstItem)
        
        firstItem!.tap()
        
        XCTAssert(UIDescriptors.addNewItemDialog.exists)
    }
    
    static func editFirstUncompletedItem() {
        XCTAssertFalse(UIDescriptors.addNewItemDialog.exists)
        let firstItem = TodoItems().firstUncompleted
        XCTAssertNotNil(firstItem)
        
        firstItem!.tap()
        
        XCTAssert(UIDescriptors.addNewItemDialog.exists)
    }
}
