//
//  GKBehavior+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 30/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

@available(macOS 10.13, iOS 11, *)
extension GKBehavior {
    @objc
    @discardableResult
    public func apply(_ closure: (GKBehavior) -> Void) -> GKBehavior {
        closure(self)
        return self
    }
}

@available(macOS 10.13, iOS 11, *)
extension GKBehavior {
    
    public static func composite(apply closure: (GKCompositeBehavior) -> Void) -> GKCompositeBehavior {
        let behavior = GKCompositeBehavior()
        closure(behavior)
        return behavior
    }
    
    public static func behavior(apply closure: (GKBehavior) -> Void) -> GKBehavior {
        let behavior = GKBehavior()
        closure(behavior)
        return behavior
    }
    
}
