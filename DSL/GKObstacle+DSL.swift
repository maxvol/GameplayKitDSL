//
//  GKObstacle+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 30/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

extension GKObstacle {
    
    public static func circle(radius: Float, apply closure: (GKCircleObstacle) -> Void) -> GKCircleObstacle {
        let circle = GKCircleObstacle(radius: radius)
        closure(circle)
        return circle
    }
    
}
