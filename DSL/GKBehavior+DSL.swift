//
//  GKBehavior+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 30/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

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
