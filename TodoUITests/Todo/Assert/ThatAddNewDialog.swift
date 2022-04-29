//
//  ThatAddNewDialog.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 25..
//

import Foundation
import XCTest

struct ThatAddNewDialog {
    static func addButtonDisabled() {
        XCTAssertFalse(UIDescriptors.addNewItemDialog.addButton.enabled)
    }
    
    static func contains(_ todo: Todo) {
        XCTAssertEqual(UIDescriptors.addNewItemDialog.nameInput.value, todo.name)
        XCTAssertEqual(UIDescriptors.addNewItemDialog.completedToggle.isOn, todo.completed)
    }
}
