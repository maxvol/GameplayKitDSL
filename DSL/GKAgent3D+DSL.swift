//
//  GKAgent3D+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 03/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

extension GKAgent3D {
    @objc
    @discardableResult
    public override func apply(_ closure: (GKAgent3D) -> Void) -> GKAgent3D {
        closure(self)
        return self
    }
}
