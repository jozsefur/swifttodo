//
//  FormType.swift
//  Todo
//
//  Created by Jozsef Basiszta on 2022. 02. 06..
//

import SwiftUI

enum FormType: Identifiable, View {
    case new
    case update(Todo)
    var id: String {
        switch self {
        case .new:
            return "new"
        case .update:
            return "update"
        }
    }
    
    var body: some View {
        switch self {
        case .new:
            return TodoFormView(formViewModel: TodoFormViewModel())
        case .update(let editTodo):
            return TodoFormView(formViewModel: TodoFormViewModel(editTodo: editTodo))
        }
    }
}
