//
//  GKComponent+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 03/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

@available(macOS 10.13, iOS 11, *)
extension GKComponent {
    @objc
    @discardableResult
    public func apply(_ closure: (GKComponent) -> Void) -> GKComponent {
        closure(self)
        return self
    }
}
