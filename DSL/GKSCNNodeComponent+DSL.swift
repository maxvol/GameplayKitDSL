//
//  GKSCNNodeComponent+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 03/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

extension GKSCNNodeComponent {
    @objc
    @discardableResult
    public override func apply(_ closure: (GKSCNNodeComponent) -> Void) -> GKSCNNodeComponent {
        closure(self)
        return self
    }

//    @discardableResult
//    public func node(_ node: SCNNode, apply closure: (SCNNode) -> Void) -> SCNNode {
//        self.node = node
//        closure(node)
//        return node
//    }
}
