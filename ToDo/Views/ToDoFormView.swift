//
//  ToDoFormView.swift
//  ToDo
//
//  Created by Jozsef Basiszta on 2022. 02. 05..
//

import SwiftUI

struct ToDoFormView: View {
    @EnvironmentObject var dataStore: DataStore
    @ObservedObject var formViewModel: ToDoFormViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                VStack(alignment: .leading, content: {
                    TextField("ToDo", text: $formViewModel.name)
                    Toggle("Completed", isOn: $formViewModel.completed)
                })
            }
            .navigationTitle("ToDo")
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
            let newItem = ToDo(name: formViewModel.name)
            dataStore.addItem(toDo: newItem)
            presentationMode.wrappedValue.dismiss()
        }
        .disabled(formViewModel.isDisabled)
    }
    
    var saveButton: some View {
        Button("Save") {
            let updated = ToDo(
                name: formViewModel.name,
                completed: formViewModel.completed,
                id: formViewModel.id!
            )
            dataStore.updateItem(toDo: updated)
            presentationMode.wrappedValue.dismiss()
        }
        .disabled(formViewModel.isDisabled)
    }
}

struct ToDoFormView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoFormView(formViewModel: ToDoFormViewModel())
            .environmentObject(DataStore())
    }
}
