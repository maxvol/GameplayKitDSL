//
//  GKAgent2D+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 03/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

extension GKAgent2D {
    @objc
    @discardableResult
    public override func apply(_ closure: (GKAgent2D) -> Void) -> GKAgent2D {
        closure(self)
        return self
    }
}
