//
//  util.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/18/16.
//
//

import SpriteKit


public extension SKNode {
	
	public func addToScene(scene: SKScene) {
		scene.addChild(self)
	}
}

//
public extension CGPoint {
	public init (x: CGFloat,_ y: CGFloat) {
		self.x = x; self.y = y
	}
}

/// Adds a label for debugging and testing
public func makeLabel(text: String) {
	// TODO: Again add the guard let thing for scene
	let myLabel = SKLabelNode(fontNamed:"Chalkduster"); let __=myLabel

	

	myLabel.text = text
	__		 .fontSize = 22
	__		 .position = alignAboveRight(myLabel, point: CGPoint(x: 0,y: 0))
	__		 .addToScene(gScene!)
}


/// Aligns something on top of an X axis, and on the RHS of the vertical line
func alignAboveRight(node: SKNode, point: CGPoint) -> CGPoint {
	return CGPoint(x: point.x + node.frame.width/2, y: point.y + node.frame.height/2)
}

func alignAboveLeft(node: SKNode, point: CGPoint) -> CGPoint {
	return CGPoint(x: point.x - node.frame.width/2, y: point.y + node.frame.height/2)
}