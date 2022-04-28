//
//  ThatAddNewDialog.swift
//  TodoUITests
//
//  Created by hero on 2022. 04. 25..
//

import Foundation
import XCTest

struct ThatAddNewDialog {
    static func addButtonDisabled() {
        XCTAssertFalse(UIDescriptors.addNewItemDialog.addButton.enabled)
    }
}
