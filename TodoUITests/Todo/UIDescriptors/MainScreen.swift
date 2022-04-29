//
//  MainScreen.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 16..
//

import Foundation

struct MainScreen {
    init() {}
    
    var appTitle: AppTitle {
        return AppTitle()
    }
      
    var addNewItemButton: AddNewItemButton {
        return AddNewItemButton()
    }
}

extension MainScreen: UIIdentifiable {
    var id: String { "todoAppTitle" }
}

extension MainScreen: Displayable {}
