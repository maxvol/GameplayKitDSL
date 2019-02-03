//
//  GKObstacleGraph+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 03/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

extension GKObstacleGraph {
    @objc
    @discardableResult
    func apply(_ closure: (GKObstacleGraph) -> Void) -> GKObstacleGraph {
        closure(self)
        return self
    }
}
