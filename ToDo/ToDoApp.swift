//
//  ToDoApp.swift
//  ToDo
//
//  Created by Jozsef Basiszta on 2022. 02. 05..
//

import SwiftUI

@main
struct ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataStore())
        }
    }
}
