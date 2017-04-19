//
//  GameplayScene.swift
//  Air Tunnel Walk
//
//  Created by ALICE on 2017/3/26.
//  Copyright © 2017年 42fun. All rights reserved.
//

import SpriteKit

class GameplayScene:SKScene{
    
    private var bg1: BGClass?
    private var bg2: BGClass?
    private var bg3: BGClass?
    
    private var mainCamera: SKCameraNode?
    
    override func didMove(to view: SKView) {
        initializeGame();
    }
    
    override func update(_ currentTime: TimeInterval) {
        manageCamera();
        manageBGsAndGrounds();
    }
    
    private func initializeGame() {
        mainCamera = childNode(withName: "MainCamera") as? SKCameraNode!
        bg1 = childNode(withName: "BG1") as? BGClass!
        bg2 = childNode(withName: "BG2") as? BGClass!
        bg3 = childNode(withName: "BG3") as? BGClass!

    }

    //Move 10 pixel every frame
    private func manageCamera() {
        self.mainCamera?.position.x += 10;
    }
    
    private func manageBGsAndGrounds() {
        bg1?.moveBG(camera: mainCamera!)
        bg2?.moveBG(camera: mainCamera!)
        bg3?.moveBG(camera: mainCamera!)

    }


} // class
