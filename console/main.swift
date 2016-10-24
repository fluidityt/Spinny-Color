//
//  main.swift
//  console
//
//  Created by Dude Guy  on 10/18/16.
//

import SpriteKit

final internal class Button2 {

	/// The node that the label will sit in:
	let background_node: SKShapeNode
	
	/// The label node:
	let label_node: SKLabelNode
	
	/** Sets scale of label to constrain inside rectangle
	- TODO: Add offset.	*/
	func _resize() {
		
		// Clarity:
		let label  = self.label_node.frame
		let target =  self.background_node.frame
		
		testing: do {
			//	/** Testing: */	defer {	print(n, "After.. label and label aspect.. ",n);printF(label_node);print(round(label_node.frame.width / label_node.frame.height))	}
			// /** Testing: */	print(n,n,"~~~~~Entering resize..  VALUE: BKG , LAB \n");	printF(target); printF(label)
			// /** Testing: */ print(n,"Aspect ratios: ",n ); print ("bkg: ", round(target.width / target.height), n);print("lab: ", round(label.width / label.height), n,n)
		}
		
		// Early return:
		if (label.width == target.width) && (label.height == target.height) {	return }
		
		// Logic stuff:
		enum ShrinkScale { case shrink, expand, nothing }
		let shrink_or_scale: (width: ShrinkScale, height: ShrinkScale) = {
			
			// Determines how exact we want our frame to fit:
			let tolerance:CGFloat = 1
			
			// Return / Assign values:
			let w: ShrinkScale, h:ShrinkScale
		
			// Width:
			if label.width > (target.width + tolerance) { w = .shrink }														// label is wider than frame -> shrink
			else if (label.width + tolerance) < target.width { w = .expand }											// label is less wide than frame -> grow
			else { w = .nothing }																																	// label is same width as frame -> do nothing
		
			// Height:
			if label.height > (target.height + tolerance) { h = .shrink }													// label is taller than frame -> shrink
			else if (label.height + tolerance) < target.height { h = .expand }										// label is less tall than frame -> grow
			else { h = .nothing }																																	// label is same height as frame -> do nothing
			
			return (w,h)
		}()
		
		testing: do {
			// /** Testing: */ print("What to do with label X: ", shrink_or_scale.width,n)
			// /** Testing: */print("What to do with label Y: ",  shrink_or_scale.height, "\n")
		}
		
		// Handle shrinks:
		switch (shrink_or_scale.width, shrink_or_scale.height) {
			case (.shrink, .expand) , (.shrink, .nothing):
				nodeScale(self.label_node, amount: target.width  / label.width)
			case (.expand, .shrink) , (.nothing, .shrink):
				nodeScale(self.label_node, amount: target.height / label.height)
			default:	()
		}
		
		// Handle double cases (scale, then return)
		switch (shrink_or_scale.width, shrink_or_scale.height) {
			
			// No action needed :)
			case (.nothing, .nothing):	()
			
			// Handle case of a shrink... multiply by SMALLEST number:
			case (.shrink, .shrink):
				let magnitude = ( x: target.width  / label.width,																	// TODO: Make sure that both of these numbers are less than 1
													y: target.height / label.height);
				magnitude.x < magnitude.y ?
					nodeScale(self.label_node, amount: magnitude.x) : nodeScale(self.label_node, amount: magnitude.y)
			
			// Handle case of a expand... multiply by SMALLEST number:
			case (.expand, .expand):
				let magnitude = (x: target.width  / label.width,																	// TODO: Make sure that both of these numbers are greater than 1
												 y: target.height / label.height);
				magnitude.x < magnitude.y ?
					nodeScale(self.label_node, amount: magnitude.x) : nodeScale(self.label_node, amount: magnitude.y)
			
			// Move on to next switch block:
			default: ()
		}
	}
	
	/// Update bkg position, then move label to it:
	var position: CGPoint {		didSet {	background_node.position = self.position } }				// Updates both nodes' position
	
	/// Updates label text, then resizes to fit inside bkg:
	var text: String {
		didSet {
			self.label_node.text = text
			_resize()
		}
	}

	/// Resizes background, then adjusts
	func scale(amount: CGFloat) {		nodeScale(self.background_node, amount: amount) }
	
	/// Add to scene...
	func addToScene(scene: SKScene) {	self.background_node.addToScene(scene) }
	
	/** Basic init
	
		Background();Label()
		self.pos-> bkg.pos-> label.pos->
		self.txt-> label.txt-> label.scale()	*/
	init(size: CGSize, text: String) {
		
		// Initialize nodes:
		self.background_node = SKShapeNode(rect: CGRect(x: 0, y: 0, width: size.width, height: size.height))
		self.label_node = SKLabelNode(text: text)
		self.background_node.addChild(self.label_node)
		
		// Initialize properties:
		self.position = CGPoint(x:0,y:0)
		self.text = ""
		self.text = text
		
		_resize()
	}
}



/*\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/
															// MARK: Testing!!
/*\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/

// Convenience:
func printr(data: [CGRect]) { for dat in data {print("\(dat.width,dat.height) \n")} }

testing: do {

	print("Shrinkx2") // working
	var button = Button2(size: CGSize(width: 65, height: 15), text: "hey  fffffffffffffffffthere")
	
	print("expandx2 for X") // working
	button.text = "OMG22222"
	
	print("shrink, expand") // working
	button.text = "zzzzzzzzzzzzz 333333333333333333333"
	
	print("expand, shrink") // working
	var button2 = Button2(size: CGSize(width: 65, height: 1), text: "hey  ")
	
	print("nothing, expand") // working
	button.text = "zzzzzzzzzzzzz 333333333333333333333"

	print(" expandx2 for Y") // working
	button.text = "z"
}






print("\n")



