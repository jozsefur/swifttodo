//
//  Typeable.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 17..
//

import Foundation
import XCTest

public protocol Typeable {
    func type(text: String)
    var value: String { get }
}

extension Typeable where Self: UIIdentifiable & Displayable {
    public func type(text: String) {
        guard let element = self.xcuiElement, element.isHittable else {
            XCTFail("Cannot type text when input UI element doesn't exist or not displayed")
            return
        }
        element.tap()
        element.typeText(text)
    }
    
    public var value: String {
        get {
            if let element = self.xcuiElement {
                return element.value as! String
            }
            XCTFail("Cannot read text when input UI element doesn't exist or not displayed")
            return ""
        }
    }
}
