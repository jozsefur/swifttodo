//
//  Toggleable.swift
//  TodoUITests
//
//  Created by hero on 2022. 04. 29..
//

import Foundation
import XCTest

public protocol Toggleable {
    var isOn: Bool { get }
}

extension Toggleable where Self: UIIdentifiable {
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
