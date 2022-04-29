//
//  Readable.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 25..
//

import Foundation
import XCTest

public protocol Readable {
    var label: String { get }
}

extension Readable where Self: UIIdentifiable {
    public var label: String {
        get {
            if let element = xcuiElement {
                return element.label
            }
            XCTFail("Cannot read label when UI element doesn't exist or not displayed")
            return ""
        }
    }
}
