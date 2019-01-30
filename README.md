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
    let entity = GKEntity.entity { entity in
        entity.agent2D {
            $0.mass = 1.0
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
