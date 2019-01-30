//
//  GKAgent+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 30/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

extension GKAgent {
    
    public static func agent2D(apply closure: (GKAgent2D) -> Void) -> GKAgent2D {
        let agent = GKAgent2D()
        closure(agent)
        return agent
    }
    
    public static func agent3D(apply closure: (GKAgent3D) -> Void) -> GKAgent3D {
        let agent = GKAgent3D()
        closure(agent)
        return agent
    }
    
}
