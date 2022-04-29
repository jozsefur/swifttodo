//
//  AddNewItemDialogWorkflows.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 17..
//

import Foundation
import XCTest

struct AddNewItemDialogWorkflows {
    static func fillDialogWith(name: String, isCompleted: Bool = false) {
        XCTAssert(UIDescriptors.addNewItemDialog.exists)
        UIDescriptors.addNewItemDialog.nameInput.type(text: name)
    }
    
    static func saveEditedItem() {
        XCTAssert(UIDescriptors.addNewItemDialog.exists)
        UIDescriptors.addNewItemDialog.addButton.tap()
    }
    
    static func cancelAddDialog() {
        XCTAssert(UIDescriptors.addNewItemDialog.exists)
        UIDescriptors.addNewItemDialog.cancelButton.tap()        
    }
}
