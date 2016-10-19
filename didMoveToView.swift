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
	
	let move = (left: sksNode("left") as! SKSpriteNode,
	            right: sksNode("right") as! SKSpriteNode)

	
	let camera = scene.childNodeWithName("camera")
	
	camera?.runAction(SKAction.moveToX(400, duration: 10))
	
	// Two globes!!
	gView = view
	gScene = scene
	

	let myLabel = SKLabelNode(fontNamed:"Chalkduster")
	myLabel.text = "Hello, World!"
	myLabel.fontSize = 45
	myLabel.position = CGPoint(x:CGRectGetMidX(scene.frame), y:CGRectGetMidY(scene.frame))
	
	scene.addChild(myLabel)
}

