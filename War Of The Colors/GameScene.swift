//
//  GameScene.swift
//  War Of The Colors
//
//  Created by Benjamin DosSantos on 7/12/14.
//  Copyright (c) 2014 BlackPenSoftware. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {

       
    }
    
    override func mouseDown(theEvent: NSEvent) {
        /* Called when a mouse click occurs */
        
        let location = theEvent.locationInNode(self)
        
        let sprite = SKSpriteNode(imageNamed:"Spaceship")
        sprite.position = location;
        sprite.setScale(0.5)
        
        let action = SKAction.rotateByAngle(M_PI, duration:1)
        sprite.runAction(SKAction.repeatActionForever(action))
        
        self.addChild(sprite)
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
