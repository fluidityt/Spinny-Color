//
//  Nodes.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/20/16.
//
//

import SpriteKit

// TODO: Error and nil checks
/// Handles initialization and calling of the global nodes
struct Nodes {
	
	let move: (left: SKSpriteNode, right: SKSpriteNode)
	let camera: SKCameraNode
	let myLabel: SKLabelNode
	//let framed: SKShapeNode
	
	init(view: SKView, scene: SKScene) {
		
		//framed = scene.childNodeWithName("framed") as! SKShapeNode
		
		move = (left: sksNode("left")   as! SKSpriteNode,
		        right: sksNode("right") as! SKSpriteNode)
		
		camera = SKCameraNode()
		scene.camera = camera
		camera.addToScene(scene)
		camera.runAction(SKAction.moveTo(CGPoint(x: -400, y: 0), duration: 10))
		
		myLabel = SKLabelNode(fontNamed:"Chalkduster")	;let ml=myLabel;_=ml
			.text  		= "Hello, World"				;_=ml
			.fontSize = 45										;_=ml
			.position = centerOf(scene: scene);_=ml
			.addToScene(scene)
		
	}
}
