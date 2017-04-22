//
//  Player.swift
//  Air Tunnel Walk
//
//  Created by Patientman on 2017/4/20.
//  Copyright © 2017年 42fun. All rights reserved.
//

import SpriteKit

struct ColliderType {
    static let PLAYER: UInt32 = 0
    static let GROUND: UInt32 = 1
    static let ROCKET_AND_COLLECTABLES: UInt32 = 2
}

class Car: SKSpriteNode {
    
}

class Player: SKSpriteNode {
    
    // Load all the texture
    private var playerAnimation = [SKTexture]()
    private var animatePlayerAction = SKAction()
    
    func initializePlayer() {
        name = "Player"
        for i in 1...6 {
            let name = "Player \(i)"
            playerAnimation.append(SKTexture(imageNamed: name))
        }
        animatePlayerAction = SKAction.animate(with: playerAnimation, timePerFrame: 0.08, resize: true, restore: false)
        self.run(SKAction.repeatForever(animatePlayerAction))
        
        physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: self.size.width, height: self.size.height))
        physicsBody?.affectedByGravity = true
        physicsBody?.categoryBitMask = ColliderType.PLAYER
        physicsBody?.collisionBitMask = ColliderType.GROUND
        physicsBody?.contactTestBitMask = ColliderType.ROCKET_AND_COLLECTABLES
    }
    
    func move(){
        self.position.x+=10;

    }
    
    func reversePlayer(){
        self.yScale *= -1;
    }
    
    
    
    
    
    
} // class
