//
//  util.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/18/16.
//
//



import SpriteKit

		// MAKRK: SKNode:

public extension SKNode {
	
	public func addToScene(scene: SKScene) {
		scene.addChild(self)
	}
}

		// MARK: Scene:

		// MARK: Nodes:

// TODO: error checking and type matching
/// ChildNodeWithName
public func sksNode(node: String) -> SKNode {
	return gScene!.childNodeWithName(node)!
}

public func sksNode(node: String, parent: String) -> SKNode {
	return gScene!.childNodeWithName(parent)!.childNodeWithName(node)!
}

// MARK: Set To Center:

public func centerOf(scene scene: SKScene) -> CGPoint {
	return CGPoint(x:CGRectGetMidX(scene.frame), y:CGRectGetMidY(scene.frame))
}

public func centerOf(node node: SKView) -> CGPoint {
	return CGPoint(x:CGRectGetMidX(node.frame), y:CGRectGetMidY(node.frame))
}

public func centerOf(view view: SKView) -> CGPoint {
	return CGPoint(x:CGRectGetMidX(view.bounds), y:CGRectGetMidY(view.bounds))
}

		// MARK: View:


		// MARK: Alignments:

/// Aligns something on top of an X axis, and on the RHS of the vertical line
public func alignAboveRight(node: SKNode, point: CGPoint) -> CGPoint {
	return CGPoint(x: point.x + node.frame.width/2, y: point.y + node.frame.height/2)
}

public func alignAboveLeft(node: SKNode, point: CGPoint) -> CGPoint {
	return CGPoint(x: point.x - node.frame.width/2, y: point.y + node.frame.height/2)
}

		// MARK: Label:

/// Adds a label for debugging and testing
public func makeLabel(text: String, alignment: CGPoint) {
	// TODO: Again add the guard let thing for scene
	let myLabel = SKLabelNode(fontNamed:"Chalkduster"); let __=myLabel
	myLabel.text = text
	__		 .fontSize = 22
	__		 .position = alignAboveRight(myLabel, point: alignment)
	__		 .addToScene(gScene!)
}

