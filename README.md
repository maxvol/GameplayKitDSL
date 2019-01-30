# GameplayKitDSL
Swift DSL for constructing GameplayKit objects.

```
let agent = GKAgent.agent2D {
                $0.radius = 10
                $0.maxSpeed = 100
                $0.maxAcceleration = 50
            }
```

```
let behavior = GKBehavior.behavior {
        $0.setWeight(50, for: Goal.wander)
        $0.setWeight(50, for: Goal.avoid)
    }
```

```
let spriteEntity = GKEntity.entity { entity in
    entity.skNodeComponent {
        $0.node = sprite
    }
    entity.agent2D { agent in
        agent.delegate = entity.components.filter { $0 is GKSKNodeComponent }.first? as? GKSKNodeComponent
    }
}

```

```
let obstacles = [
        GKObstacle.circle(radius: 50) {
            $0.position = vector_float2(-100, -100)
        },
        GKObstacle.circle(radius: 50) {
            $0.position = vector_float2(-100, 100)
        },
        GKObstacle.circle(radius: 50) {
            $0.position = vector_float2(100, -100)
        },
        GKObstacle.circle(radius: 50) {
            $0.position = vector_float2(100, 100)
        }
    ]
```
