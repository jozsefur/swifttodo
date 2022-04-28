//
//  Typeable.swift
//  TodoUITests
//
//  Created by hero on 2022. 04. 17..
//

import Foundation
import XCTest

public protocol Typeable {
    func type(text: String)
}

extension Typeable where Self: UIIdentifiable & Displayable {
    public func type(text: String) {
        guard let element = xcuiElement, element.isHittable else {
            XCTFail("Cannot type text when input UI element doesn't exist or not displayed")
            return
        }
        element.tap()
        element.typeText(text)
    }
}
