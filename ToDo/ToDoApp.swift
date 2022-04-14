//
//  TodoApp.swift
//  Todo
//
//  Created by Jozsef Basiszta on 2022. 02. 05..
//

import SwiftUI

@main
struct TodoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataStore())
        }
    }
}
