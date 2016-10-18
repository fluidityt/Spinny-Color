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
				
				let sprite = SKSpriteNode(imageNamed:"Spaceship"); let s = sprite
				let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
				
				sprite.setScale(0.5) ;_=s
					.position = tLocation ;_=s
						.runAction(SKAction.repeatActionForever(action));_=s
							.addToScene(gScene!)
				
			}