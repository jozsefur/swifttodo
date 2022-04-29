//
//  Toggle.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 27..
//

import Foundation
import XCTest

protocol Toggle: UIIdentifiable, Displayable, Tappable {
    var isOn: Bool { get }
}

extension Toggle {
    var isOn: Bool {
        get {
            if let element = xcuiElement, let value = element.value as? String {
                return value == "1"
            }
            XCTFail("Cannot get is on property when toggle doesn't exist")
            return false
        }
    }
}
