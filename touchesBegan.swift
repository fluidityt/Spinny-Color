//
//  touchesBegan.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/18/16.
//
//

import SpriteKit

// TODO: Check the guard let gScene = gScene thing...
/// Do something with event.timestamp
internal func iTouchesBegan(tLocation: CGPoint, timeAtBegan: NSTimeInterval) {
	// TODO: See if passing around a class reference is faster than instantiating a struct object
	let
	view = gView!,
	scene = gScene!,
	nodes = gNodes!
	
	nodes.label.text 			= point(tLocation)
	nodes.camera.moveTo(tLocation, duration: 0.25)
	
	
}

// Junk:
private func zoo() {

				let sprite = SKSpriteNode(imageNamed:"Spaceship"); let s = sprite
				let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
				
				sprite.setScale(0.5) ;_=s
					//.position = tLocation ;_=s
						.runAction(SKAction.repeatActionForever(action));_=s
							.addToScene(gScene!)
}