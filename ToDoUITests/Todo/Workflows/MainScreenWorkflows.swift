//
//  MainScreenWorkflows.swift
//  TodoUITests
//
//  Created by hero on 2022. 04. 17..
//

import Foundation
import XCTest

struct MainScreenWorkflows {
    static func openAddDialog() {
        XCTAssertFalse(UIDescriptors.addNewItemDialog.displayed)
        UIDescriptors.mainScreen.addNewItemButton.tap()
    }
    
    static func editFirstCompletedItem() {
        XCTAssertFalse(UIDescriptors.addNewItemDialog.displayed)
        
    }
}
