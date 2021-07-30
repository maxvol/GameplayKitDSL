//
//  GKCircleObstacle+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 03/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

@available(macOS 10.13, iOS 11, *)
extension GKCircleObstacle {
    @objc
    @discardableResult
    public override func apply(_ closure: (GKCircleObstacle) -> Void) -> GKCircleObstacle {
        closure(self)
        return self
    }
}

