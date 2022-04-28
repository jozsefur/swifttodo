//
//  UIIdentifiable.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 16..
//

import Foundation
import XCTest

public protocol UIIdentifiable {
    var id: String { get }
    var exists: Bool { get }
}

extension UIIdentifiable {
    public var exists: Bool {
        xcuiElement?.exists ?? false
    }

    internal var xcuiElement: XCUIElement? {
        return XCUIApplication().descendants(matching: .any).element(matching: .any, identifier: id)
    }
}
