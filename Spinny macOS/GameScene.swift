//
//  GameScene.swift
//  Spinny macOS
//
//  Created by Dude Guy  on 10/18/16.
//  Copyright (c) 2016 Dude Guy . All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
	override func didMoveToView(view: SKView) {
		

		
	
		//self.childNodeWithName("mySquare")?.position = point(0,0)
		
		 iDidMoveToView(view, scene: self)
		

		
	}
	
	override func mouseDown(theEvent: NSEvent) {
		// macOS specific initials:
		//let location = theEvent.locationInNode(self)
		//let time_at_began = theEvent.timestamp
		
		//iTouchesBegan(location, timeAtBegan: time_at_began)
		
	}
	
	override func update(currentTime: CFTimeInterval) {
	}
}
