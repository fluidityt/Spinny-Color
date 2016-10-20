//
//  GameScene.swift
//  Spinny iOS
//
//  Created by Dude Guy  on 10/18/16.
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

import SpriteKit

// TODO: Test my centerOf funcs

class GameScene: SKScene {
	override func didMoveToView(view: SKView) {
		self.size = CGSize(width: view.bounds.width, height: view.bounds.height)
		self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
		self.position = CGPoint(x: 0, y: 0)
		
		iDidMoveToView(view, scene: self)
	
	}
	
	override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
		/* Called when a touch begins */
		
		let location = touches.first?.locationInNode(self)
		let time_at_began = event!.timestamp
		iTouchesBegan(location!, timeAtBegan: time_at_began)
		
	}
	
	override func update(currentTime: CFTimeInterval) {
		/* Called before each frame is rendered */
	}
}

