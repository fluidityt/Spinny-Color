//
//  Nodes.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/20/16.
//
//

import SpriteKit

// TODO: Error and nil checks
// TODO: SK Constraints

/// Handles initialization and calling of the global nodes
struct Nodes {
	
	let move: (left: SKSpriteNode,
						right: SKSpriteNode),
	
	 camera: SKCameraNode,
	 label: SKLabelNode
		// bkg: SKSpriteNode
	
		//let framed: SKShapeNode
	
	init(view: SKView, scene: SKScene) {
		
		// L/R
		let left = SKSpriteNode(color: SKColor.blueColor(), size: CGSize(width: 100, height: 100))
			let right = SKSpriteNode(color: SKColor.blackColor(), size: CGSize(width: 100, height: 100))
		left.addToScene(scene)
			right.addToScene(scene)
		left.position = centerOf(scene: scene)
			right.position = centerOf(scene: scene)
		left.position.x = 0 + left.frame.width/2
			right.position.x = scene.frame.maxX - right.frame.width/2
		move.left = left
			move.right = right
		
		// Camera
		camera = SKCameraNode()
		camera.addToScene(scene)
		camera.position = centerOf(scene: scene)
		scene.camera = camera
		
		// Label
		label = SKLabelNode(text: "Hey there")
		label.addToScene(scene)
		label.position = centerOf(scene: scene)

	}
}
