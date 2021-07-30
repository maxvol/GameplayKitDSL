//
//  GKSKNodeComponent+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 03/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

@available(macOS 10.13, iOS 11, *)
extension GKSKNodeComponent {
    @objc
    @discardableResult
    public override func apply(_ closure: (GKSKNodeComponent) -> Void) -> GKSKNodeComponent {
        closure(self)
        return self
    }
    
    @discardableResult
    public func node(_ node: SKNode, apply closure: (SKNode) -> Void) -> SKNode {
        self.node = node
        closure(node)
        return node
    }
}
