//
//  NameInput.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 17..
//

import Foundation

struct NameInput {
    init() {}
}

extension NameInput: TextInput {
    var id: String { "todoNameInput" }
}
