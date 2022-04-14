//
//  TodoFormView.swift
//  Todo
//
//  Created by Jozsef Basiszta on 2022. 02. 05..
//

import SwiftUI

struct TodoFormView: View {
    @EnvironmentObject var dataStore: DataStore
    @ObservedObject var formViewModel: TodoFormViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                VStack(alignment: .leading, content: {
                    TextField("Todo", text: $formViewModel.name)
                    Toggle("Completed", isOn: $formViewModel.completed)
                })
            }
            .navigationTitle("Todo")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: cancelButton,
                trailing: (formViewModel.isBeingUpdated ? AnyView(saveButton) : AnyView(addButton))
            )
        }
    }
    
    var cancelButton: some View {
        Button("Cancel") {
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    var addButton: some View {
        Button("Add") {
            let newItem = Todo(name: formViewModel.name)
            dataStore.addItem(Todo: newItem)
            presentationMode.wrappedValue.dismiss()
        }
        .disabled(formViewModel.isDisabled)
    }
    
    var saveButton: some View {
        Button("Save") {
            let updated = Todo(
                name: formViewModel.name,
                completed: formViewModel.completed,
                id: formViewModel.id!
            )
            dataStore.updateItem(Todo: updated)
            presentationMode.wrappedValue.dismiss()
        }
        .disabled(formViewModel.isDisabled)
    }
}

struct TodoFormView_Previews: PreviewProvider {
    static var previews: some View {
        TodoFormView(formViewModel: TodoFormViewModel())
            .environmentObject(DataStore())
    }
}
