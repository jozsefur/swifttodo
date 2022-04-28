//
//  Readable.swift
//  TodoUITests
//
//  Created by hero on 2022. 04. 25..
//

import Foundation
import XCTest

public protocol Readable {
    var label: String { get }
}

extension Readable where Self: UIIdentifiable & Displayable {
    public var label: String {
        get {
            guard let element = xcuiElement, element.isHittable else {
                XCTFail("Cannot read label when UI element doesn't exist or not displayed")
                return ""
            }
            return element.label
        }
    }
}
