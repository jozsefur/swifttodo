//
//  AddNewItemButton.swift
//  TodoUITests
//
//  Created by hero on 2022. 04. 16..
//

import Foundation

struct AddNewItemButton {
    init() {}
}

extension AddNewItemButton: UIIdentifiable {
    var id: String { "todoPlusButton" }
}

extension AddNewItemButton: Displayable {}

extension AddNewItemButton: Tappable {}
