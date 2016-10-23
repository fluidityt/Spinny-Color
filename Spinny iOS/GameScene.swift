//
//  GameScene.swift
//  Spinny iOS
//
//  Created by Dude Guy  on 10/18/16.
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

import SpriteKit



// TODO: Test my centerOf funcs
final internal class GameScene: SKScene {
	override func didMoveToView(view: SKView) {

		// Adjust scene -> configure nodes -> Return
		iDidMoveToView(view, scene: self)

	}
	
	override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

		let location = touches.first?.locationInNode(self)
		let time_at_began = event!.timestamp
		iTouchesBegan(location!, timeAtBegan: time_at_began)
		
	}
	
	override func update(currentTime: CFTimeInterval) {

		iUpdate(currentTime)
	}
}

