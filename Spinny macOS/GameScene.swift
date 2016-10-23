//
//  GameScene.swift
//  Spinny macOS
//
//  Created by Dude Guy  on 10/18/16.
//  Copyright (c) 2016 Dude Guy . All rights reserved.
//

import SpriteKit

final internal class GameScene: SKScene {
	override func didMoveToView(view: SKView) {

		// Adjust scene -> configure nodes -> Return
		_iDidMoveToView(view, scene: self)

	}

	override func mouseDown(theEvent: NSEvent) {
		// macOS specific initials:
		let location = theEvent.locationInNode(self)
		let time_at_began = theEvent.timestamp

		_iTouchesBegan(location, timeAtBegan: time_at_began)

	}

	override func update(currentTime: CFTimeInterval) {

		iUpdate(currentTime)
	}
}
