//
//  GKCircleObstacle+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 03/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

extension GKCircleObstacle {
    @objc
    @discardableResult
    override func apply(_ closure: (GKCircleObstacle) -> Void) -> GKCircleObstacle {
        closure(self)
        return self
    }
}

