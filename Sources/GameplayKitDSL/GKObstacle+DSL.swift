//
//  GKObstacle+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 30/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

@available(macOS 10.13, iOS 11, *)
extension GKObstacle {
    @objc
    @discardableResult
    public func apply(_ closure: (GKObstacle) -> Void) -> GKObstacle {
        closure(self)
        return self
    }
}

@available(macOS 10.13, iOS 11, *)
extension GKObstacle {
    
    public static func circle(radius: Float, apply closure: (GKCircleObstacle) -> Void) -> GKCircleObstacle {
        let circle = GKCircleObstacle(radius: radius)
        closure(circle)
        return circle
    }
    
}
