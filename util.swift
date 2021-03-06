//
//  util.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/18/16.
//
//



import SpriteKit

public func printF(node: SKNode) {
	 print(node.name, Int(node.frame.width), Int(node.frame.height))
}

public func printF(frame: CGRect) {
	 print(Int(frame.width), Int(frame.height))
}

public func nodeScale(node: SKNode, amount: CGFloat) {
		node.xScale = node.xScale * amount
		node.yScale = node.yScale * amount
}

		// MAKRK: SKNode:

public extension SKNode {
	
	public func addToScene(scene: SKScene) {
		scene.addChild(self)
	}

	public func moveTo(location: CGPoint, duration: NSTimeInterval) {
		self.runAction(SKAction.moveTo(location, duration: duration))
	}
	
	public func scale(amount: CGFloat) {
		self.xScale = self.xScale * amount
		self.yScale = self.yScale * amount
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


/*\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/
															// MARK: Another func?
/*\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/

/// This can be used to force a frame to stretc to a box..
func forceFit() {
	/*
	// Aspect ratio (assumes landscape text):
	let bkg_AR = (bkg.frame.width / bkg.frame.height) 																		// to 1
	let lab_AR = (lab.frame.width / lab.frame.height) // to 1
	
	// Logic stuff .. force fit to 100% of the bkg
	let amount_to_scale: (width: CGFloat, height: CGFloat) = {
		
		let w: CGFloat, h: CGFloat	// Returners
		
		if shrink_or_scale.width == .shrink 			{	w = max.width / lab.frame.width	}		// We need to scale label's width by 0.XX
		else if shrink_or_scale.width == .expand  {	w = lab.frame.width / bkg.frame.width	}		// We need to scale label's width by >1.00
		else { w = 1 }																																				// We don't need to scale
		
		if shrink_or_scale.height == .shrink 			 {	h = bkg.frame.height / lab.frame.height	}	// We need to scale label's height by 0.XX
		else if shrink_or_scale.height == .expand  {	h = lab.frame.height / bkg.frame.height	}	// We need to scale label's height by >1.00
		else { h = 1 }																																					// We don't need to scale
		
		return (w,h)
	}()
	
	// Scrunch / expand to fit exactly:
	lab.xScale = lab.xScale * amount_to_scale.width
	lab.yScale = lab.yScale * amount_to_scale.height
	
		// TODO: Check for negative or less than 1 value
	let new_aspect_ratio = (lab.frame.width / lab.frame.height)
	
	// Make a new "frame" to resize again to:
	// .. difference in aspect ratio.. if > shrink, if < expand
	
	// How to find longest , tallest label, that is proper aspect AND fits inside bkg
	
	// never lose the original ratio...
	// if one result is too big, then the only operation that can be performed is shrink
	// if both are too small, then expand both sides only by the shortest.
	
	
	/*
				_________________
				|		 _______	  |
				|		 |_____|	  |
				|_______________|
				x = 2, y = 2
	

	*/
*/
}



