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
		
		/*
		self.size.height = 400
		self.size.width = 400
		self.position = CGPoint(x: 0, y: 0)
		*/
		
		iDidMoveToView(view, scene: self)
		
		print(view.bounds)
		
	}
	
	override func mouseDown(theEvent: NSEvent) {
		// macOS specific initials:
		let location = theEvent.locationInNode(self)
		let time_at_began = theEvent.timestamp
		
		iTouchesBegan(location, timeAtBegan: time_at_began)
	}
	
	override func update(currentTime: CFTimeInterval) {
	}
}
