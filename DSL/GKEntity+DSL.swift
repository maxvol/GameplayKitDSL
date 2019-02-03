//
//  GKEntity+DSL.swift
//  GameplayKitDSL
//
//  Created by Maxim Volgin on 30/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import GameplayKit

extension GKEntity {
    @objc
    @discardableResult
    public func apply(_ closure: (GKEntity) -> Void) -> GKEntity {
        closure(self)
        return self
    }
}

extension GKEntity {
    
    public static func entity(apply closure: (GKEntity) -> Void) -> GKEntity {
        let entity = GKEntity()
        closure(entity)
        return entity
    }
    
    @discardableResult
    public func custom<Component: GKComponent>(_ component: Component, apply closure: (Component) -> Void) -> Component {
        self.addComponent(component)
        closure(component)
        return component
    }
    
    @discardableResult
    public func agent2D(apply closure: (GKAgent2D) -> Void) -> GKAgent2D {
        return custom(GKAgent2D(), apply: closure)
    }
    
    @discardableResult
    public func agent3D(apply closure: (GKAgent3D) -> Void) -> GKAgent3D {
        return custom(GKAgent3D(), apply: closure)
    }
    
    @discardableResult
    public func skNodeComponent(apply closure: (GKSKNodeComponent) -> Void) -> GKSKNodeComponent {
        return custom(GKSKNodeComponent(), apply: closure)
    }
    
    @discardableResult
    public func scnNodeComponent(apply closure: (GKSCNNodeComponent) -> Void) -> GKSCNNodeComponent {
        return custom(GKSCNNodeComponent(), apply: closure)
    }
    
}

