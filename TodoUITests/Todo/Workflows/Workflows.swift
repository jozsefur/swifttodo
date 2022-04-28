//
//  workflows.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 16..
//

import Foundation
import XCTest

class Workflows {
    static var app: AppWorkflows.Type { AppWorkflows.self }
    
    static var mainScreen: MainScreenWorkflows.Type { MainScreenWorkflows.self }
    
    static var addNewItemDialog: AddNewItemDialogWorkflows.Type { AddNewItemDialogWorkflows.self }
}
