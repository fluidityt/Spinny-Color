//
//  didMoveToView.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/18/16.
//
//

import SpriteKit



internal func iDidMoveToView(view: SKView, scene: SKScene)
{
	
	// Two globes!!
	gView = view
	gScene = scene
	
	let myLabel = SKLabelNode(fontNamed:"Chalkduster")
	myLabel.text = "Hello, World!"
	myLabel.fontSize = 45
	myLabel.position = CGPoint(x:CGRectGetMidX(scene.frame), y:CGRectGetMidY(scene.frame))
	
	scene.addChild(myLabel)
}

