//
//  FormType.swift
//  ToDo
//
//  Created by Jozsef Basiszta on 2022. 02. 06..
//

import SwiftUI

enum FormType: Identifiable, View {
    case new
    case update(ToDo)
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
            return ToDoFormView(formViewModel: ToDoFormViewModel())
        case .update(let editToDo):
            return ToDoFormView(formViewModel: ToDoFormViewModel(editToDo: editToDo))
        }
    }
}
