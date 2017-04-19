//
//  GroundClass.swift
//  Air Tunnel Walk
//
//  Created by ALICE on 2017/4/19.
//  Copyright © 2017年 42fun. All rights reserved.
//

import SpriteKit

class GroundClass: SKSpriteNode {
    
    func moveGroundsOrFloors(camera: SKCameraNode) {
        if self.position.x + self.size.width < camera.position.x {
            self.position.x += self.size.width * 3;
        }
    }
}
