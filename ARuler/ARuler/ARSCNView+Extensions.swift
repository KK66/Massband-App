//
//  ARSCNView+Extensions.swift
//  ARuler
//
//  Created by Kilian Kellermann on 02.08.19.
//  Copyright © 2019 Kilian Kellermann. All rights reserved.
//

import ARKit

extension ARSCNView {
    func worldVector(for position: CGPoint) -> SCNVector3? {
        let results = self.hitTest(position, types: [.featurePoint])
        guard let result = results.first else {
            return nil
        }
        return SCNVector3.positionFromTransform(result.worldTransform)
    }
}
