//
//  GKCompositeBehavior+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 03/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//


import GameplayKit

extension GKCompositeBehavior {
    @objc
    @discardableResult
    public override func apply(_ closure: (GKCompositeBehavior) -> Void) -> GKCompositeBehavior {
        closure(self)
        return self
    }
}
