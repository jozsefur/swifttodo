//
//  ContentView.swift
//  Todo
//
//  Created by Jozsef Basiszta on 2022. 02. 05..
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataStore: DataStore
    @State private var formType: FormType?
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(dataStore.Todos) { Todo in
                    Button {
                        self.formType = .update(Todo)
                    } label: {
                        Text(Todo.name)
                            .strikethrough(Todo.completed)
                            .foregroundColor(Todo.completed ? .green : Color(.label))
                            .accessibility(value: Text("\(Todo.completed ? "Completed" : "Uncompleted") todo item: \(Todo.name)"))
                    }
                    .accessibility(identifier: "todoItem-\(Todo.name)")
                }
                .onDelete(perform: { indexSet in
                    dataStore.deleteItem(at: indexSet)
                })
            }
            .accessibility(identifier: "todoList")
            .listStyle(InsetGroupedListStyle())
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("SUT Todo App")
                        .font(.largeTitle)
                        .foregroundColor(Color(.label))
                        .accessibility(identifier: "todoAppTitle")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button {
                            self.formType = .new
                        } label: {
                            Image(systemName: "plus.circle.fill")
                        }
                        .accessibility(identifier: "todoPlusButton")
                        Text("")
                    }
                }
            }
        }
        .sheet(item: $formType) { formType in
            formType
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
