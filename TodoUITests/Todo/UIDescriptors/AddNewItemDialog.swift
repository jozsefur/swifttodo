//
//  Dialog.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 16..
//

import Foundation

struct AddNewItemDialog {    
    var addButton: AddButton { AddButton() }
    
    var cancelButton: CancelButton { CancelButton() }
    
    var nameInput: NameInput { NameInput() }
    
    var completedToggle: CompletedToggle { CompletedToggle() }
}

extension AddNewItemDialog: UIIdentifiable {
    var id: String { "Todo" }
}

extension AddNewItemDialog: Displayable {}
