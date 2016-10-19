//
//  util.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/18/16.
//
//

import SpriteKit

// MAKRK: SKNode

public extension SKNode {
	
	public func addToScene(scene: SKScene) {
		scene.addChild(self)
	}
}

// MARK: Nodes

// TODO: error checking and type matching
	public func sksNode(node: String) -> SKNode {
		return gScene.childNodeWithName(node)!
	}


// MARK: Align

/// Aligns something on top of an X axis, and on the RHS of the vertical line
public func alignAboveRight(node: SKNode, point: CGPoint) -> CGPoint {
	return CGPoint(x: point.x + node.frame.width/2, y: point.y + node.frame.height/2)
}

public func alignAboveLeft(node: SKNode, point: CGPoint) -> CGPoint {
	return CGPoint(x: point.x - node.frame.width/2, y: point.y + node.frame.height/2)
}

// MARK: Label

/// Adds a label for debugging and testing
public func makeLabel(text: String) {
	// TODO: Again add the guard let thing for scene
	let myLabel = SKLabelNode(fontNamed:"Chalkduster"); let __=myLabel
	myLabel.text = text
	__		 .fontSize = 22
	__		 .position = alignAboveRight(myLabel, point: CGPoint(x: 200,y: 200))
					print(__.position)
	__		 .addToScene(gScene!)
}

