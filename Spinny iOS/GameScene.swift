//
//  GameScene.swift
//  Spinny iOS
//
//  Created by Dude Guy  on 10/18/16.
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
	override func didMoveToView(view: SKView) {
		iDidMoveToView(view, scene: self)
	}
	
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
			
			let time_at_began = event!.timestamp
			let location = touches.first?.locationInNode(self)
			
			///
			func iTouchesBegan(tLocation: CGPoint, timeAtBegan: NSTimeInterval) {
				
				let sprite = SKSpriteNode(imageNamed:"Spaceship")
				let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
				
				
				sprite.setScale(0.5)
				sprite.position = location
				sprite.runAction(SKAction.repeatActionForever(action))
				
				gScene!.addChild(sprite)
			}
    }
	
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}

