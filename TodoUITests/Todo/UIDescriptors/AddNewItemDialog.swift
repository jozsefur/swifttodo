//
//  Dialog.swift
//  TodoUITests
//
//  Created by hero on 2022. 04. 16..
//

import Foundation

struct AddNewItemDialog {
    init() {}
    
    var addButton: AddButton { AddButton() }
    
    var cancelButton: CancelButton { CancelButton() }
    
    var nameInput: NameInput { NameInput() }
}

extension AddNewItemDialog: UIIdentifiable {
    var id: String { "Todo" }
}

extension AddNewItemDialog: Displayable {}
