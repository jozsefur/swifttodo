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
                    }
                }
                .onDelete(perform: { indexSet in
                    dataStore.deleteItem(at: indexSet)
                })
            }
            .listStyle(InsetGroupedListStyle())
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("SUT Todo App")
                        .font(.largeTitle)
                        .foregroundColor(Color(.label))
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        self.formType = .new
                    } label: {
                        Image(systemName: "plus.circle.fill")
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
