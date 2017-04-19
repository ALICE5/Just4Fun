//
//  BGClass.swift
//  Air Tunnel Walk
//
//  Created by Patientman on 2017/4/18.
//  Copyright © 2017年 42fun. All rights reserved.
//

import SpriteKit

class BGClass: SKSpriteNode {
    func moveBG(camera: SKCameraNode) {
        if self.position.x + self.size.width < camera.position.x {
            self.position.x += self.size.width * 3;
        }
    }
}
