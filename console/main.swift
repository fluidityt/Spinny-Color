//
//  main.swift
//  console
//
//  Created by Dude Guy  on 10/18/16.
//
//

import SpriteKit
let n = "\n"

/*\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/
															// MARK: Button
/*\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/


final internal class Button2 {

	// Indirectly controlled nodes:
	let background: SKShapeNode
	let label: SKLabelNode

	/// Update bkg position, then move label to it:
	var position: CGPoint {
		didSet {
			background.position = self.position
			// Should auto update.. // label.position = background.position
		}
	}

	/// Updates label text, then resizes to fit inside bkg:
	var text: String {
		didSet {

		}
	}

	/// Resizes background, then adjusts
	func setScale(scale: CGFloat) {
		self.background.setScale(scale) 	// Update our bkg
		// Shouldn't need to resize // self.text = self.text + "" 				// Trigger resize
	}
	
	/** Basic init
	
		Background();Label()
		self.pos-> bkg.pos-> label.pos->
		self.txt-> label.txt-> label.setScale()
	*/
	init(size: CGSize, text: String) {
		
		// Initialize nodes:
		self.background = SKShapeNode(rect: CGRect(x: 0, y: 0, width: size.width, height: size.height))
		self.label = SKLabelNode(text: text)
		self.background.addToScene(gScene!)
		self.background.addChild(self.label)
		
		// Initialize properties:
		self.position = CGPoint(x:0,y:0)
		self.text = text
	}
}

/*\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/
															// MARK: Setup
/*\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/

// Convenience:
func printr(data: [CGRect]) { for dat in data {print("\(dat.width,dat.height) \n")} }

// Set frame sizes:
let lab = SKLabelNode(text: "Hey there my name is what")
let bkg = SKLabelNode(text: "Hey I'm a rectangle")


/*\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/
															// MARK: resize()
/*\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/

/** Sets scale of label to constrain inside rectangle
- TODO: Add offset.
*/
func _resize() {
	
	// Clarity:
	let label  = lab.frame
	let target =  bkg.frame

/** Testing: */	print("INItIAL VALUE: BKG , LAB \n");	printr([label, bkg.frame])
/** Testing: */ print(n,"Aspect ratios: ",n ); print ("bkg: ",bkg.frame.width / bkg.frame.height, n);print("lab: ",lab.frame.width / lab.frame.height, n,n)

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
	
/** Testing: */ print("What to do with label X: ", shrink_or_scale.width,n)
/** Testing: */print("What to do with label Y: ",  shrink_or_scale.height, "\n")
	
	// Handle double cases (scale, then return)
	switch (shrink_or_scale.width, shrink_or_scale.height) {
		
		// Early return if no scale action needed:
		case (.nothing, .nothing):
			return
		
		// Handle case of a shrink... multiply by LARGEST number:
		case (.shrink, .shrink):
			let magnitude = ( x: target.width  / label.width,																		// TODO: Make sure that both of these numbers are less than 1
											  y: target.height / label.height);
			magnitude.x > magnitude.y ? lab.setScale(magnitude.x) : lab.setScale(magnitude.y)
			return
		
		// Handle case of a expand... multiply by SMALLEST number:
		case (.expand, .expand):
			let magnitude = (x: target.width  / label.width,																		// TODO: Make sure that both of these numbers are greater than 1
											 y: target.height / label.height);
			magnitude.x > magnitude.y ? lab.setScale(magnitude.x) : lab.setScale(magnitude.y)
			return
	
		// Move on to next switch block:
		default: ()
	}

	// Handle shrinks:
	switch (shrink_or_scale.width, shrink_or_scale.height) {
		case (.shrink, .expand) , (.shrink, .nothing):
			lab.setScale(target.width  / label.width)
		case (.expand, .shrink) , (.nothing, .shrink):
			lab.setScale(target.height / label.height)
		default:
			()
	}

/** Testing: */	defer {	print(n, "After.. label and label aspect.. ",n);printr([lab.frame]);print(lab.frame.width / lab.frame.height)	}
}

_resize()

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


print("\n")



