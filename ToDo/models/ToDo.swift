//
//  ToDo.swift
//  ToDo
//
//  Created by Jozsef Basiszta on 2022. 02. 05..
//

import Foundation

struct ToDo: Identifiable, Codable {
    var name: String
    var completed: Bool = false
    private var _id: UUID = UUID()

    var id: String {
        return self._id.uuidString
    }
    
    static var sampleData: [ToDo] {
        [
            ToDo(name: "porszívózás"),
            ToDo(name: "minta app összerakása", completed: true)
        ]
    }
}
