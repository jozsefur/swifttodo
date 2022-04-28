//
//  Displayable.swift
//  TodoUITests
//
//  Created by Jozsef Basiszta on 2022. 04. 16..
//

import Foundation

public protocol Displayable {
    var displayed: Bool { get }
    var enabled: Bool { get }
}

extension Displayable where Self: UIIdentifiable {
    public var displayed: Bool {
        return xcuiElement?.isHittable ?? false
    }

    public var enabled: Bool {
        return xcuiElement?.isEnabled ?? false
    }
}
