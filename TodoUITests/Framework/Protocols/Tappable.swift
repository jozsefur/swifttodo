//
//  Tappable.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 16..
//

import Foundation
import XCTest

public protocol Tappable {
    func tap()
}

extension Tappable where Self: UIIdentifiable {
    public func tap() {
        guard let xcuiElement = self.xcuiElement, xcuiElement.exists else {
            XCTFail("UI element is not found when trying to tap on it. ID: \(self.id)")
            return
        }

        if !xcuiElement.isHittable {
            print("UI element is not hittable when tap method is called. Attempting tap. ID: \(self.id)")
        }

        xcuiElement.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.5)).tap()
    }
}
