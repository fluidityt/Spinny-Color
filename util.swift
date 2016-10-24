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

	public func moveTo(location: CGPoint, duration: NSTimeInterval) {
		self.runAction(SKAction.moveTo(location, duration: duration))
	}
	
}

		// MARK: Scene:

		// MARK: Nodes:


public func copyNode(sprite: SKSpriteNode) -> SKSpriteNode { return sprite.copy() as! SKSpriteNode }
public func copyNode(node:   SKNode) 			 -> SKNode { return node.copy() as! SKNode }
public func copyNode(shape:  SKShapeNode)  -> SKShapeNode { return shape.copy() as! SKShapeNode }

public func sksNode(node: String) -> SKNode {
	// TODO: error checking and type matching
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

		// MARK: Points:

func point(x: CGFloat,_ y: CGFloat) -> CGPoint { return CGPoint(x: x, y: y) }


//public func alignAboveRight(point: CGPoint) -> CGPoint {}


		// MARK: Label:

/// Adds a label for debugging and testing
public func makeLabel(text: String, position: CGPoint) {
	// TODO: Again add the guard let thing for scene
	let myLabel = SKLabelNode(fontNamed:"Chalkduster"); let __=myLabel
	myLabel.text = text
	__		 .fontSize = 22
	__		 .position = position
	__		 .addToScene(gScene!)
}

