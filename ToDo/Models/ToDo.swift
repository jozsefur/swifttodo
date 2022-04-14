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
    var id: String = UUID().uuidString
//    private var _id: UUID = UUID()
//
//    var id: String {
//        get { self._id.uuidString }
//        set { self._id = UUID(uuidString: newValue)! }
//    }
    
    static var sampleData: [ToDo] {
        [
            ToDo(name: "porszívózás"),
            ToDo(name: "minta app összerakása", completed: true)
        ]
    }
}
