//
//  touchesBegan.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/18/16.
//
//

import SpriteKit


/// Do something with event.timestamp
internal func _iTouchesBegan(tLocation: CGPoint, timeAtBegan: NSTimeInterval) {

	gNodes!.camera.moveTo(tLocation, duration: 0.25)

}

/*
	let sprite = SKSpriteNode(imageNamed:"Spaceship"); let s = sprite
	let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)

	sprite.setScale(0.5) ;_=s
	.position = tLocation ;_=s
	.runAction(SKAction.repeatActionForever(action));_=s
	.addToScene(gScene!)
	*/

/*

	var selectedNodes = [UITouch:SKSpriteNode]()

	override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    for touch in touches {
        let location = touch.locationInNode(self)
        if let node = self.nodeAtPoint(location) as? SKSpriteNode {
            // Assumes sprites are named "sprite"
            if (node.name == "sprite") {
                selectedNodes[touch] = node
            }
        }
    }
	}


*/