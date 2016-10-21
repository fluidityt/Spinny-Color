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
		
		self.anchorPoint = CGPoint(x: 0.5,y: 0.5)
		self.size.height = view.bounds.height
		self.size.width = view.bounds.width
		self.position = CGPoint(x:0,y:0)
		
	
		
		
		// iDidMoveToView(view, scene: self)
		

		
	}
	
	override func mouseDown(theEvent: NSEvent) {
		// macOS specific initials:
		let location = theEvent.locationInNode(self)
		let time_at_began = theEvent.timestamp
		
		//iTouchesBegan(location, timeAtBegan: time_at_began)
	}
	
	override func update(currentTime: CFTimeInterval) {
	}
}
