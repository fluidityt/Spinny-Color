//
//  main.swift
//  console
//
//  Created by Dude Guy  on 10/18/16.
//
//

import SpriteKit

//print(zigger)

final internal class Button2 {

	// Indirectly controlled nodes:
	let background: SKShapeNode
	let label: SKLabelNode

	/// Update bkg position, then move label to it:
	var position: CGPoint {
		didSet {
			background.position = self.position
			label.position = background.position
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
		self.text = self.text + "" 		// Trigger resize
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
		
		// Initialize properties:
		self.position = CGPoint(x:0,y:0)
		self.text = text
	}
}

// Convenience:
func printr(data: [CGRect]) { for dat in data {print("\(dat.width,dat.height) \n")} }

// Set frame sizes:
let lab = SKLabelNode(text: "Hey there my name is what")
let bkg = SKLabelNode(text: "Hey I'm a rectangle")


/// Sets scale of label to constrain inside rectangle
func _resize() {	// << TODO: Add offset >>
	
	// Aspect ratio (assumes landscape text):
	let aspect_ratio = (lab.frame.width / lab.frame.height) // ... to 1
	
	// Early return:
	if (lab.frame.width == bkg.frame.width) && (lab.frame.height == bkg.frame.height) {	return }
	
	
	/** Testing: */	print("INItIAL VALUE: \n");	printr([lab.frame, bkg.frame])
	
	// Logic stuff:
	enum ShrinkScale { case shrink, expand, nothing }
	let shrink_or_scale: (width: ShrinkScale, height: ShrinkScale) = {
		
		let tolerance:CGFloat = 1						// Determines how exact we want our frame to fit
		
		let w: ShrinkScale, h:ShrinkScale		// Return values
	
		// Width:
		if lab.frame.width > (bkg.frame.width + tolerance) { w = .shrink }			// label is wider than frame -> shrink
		else if (lab.frame.width + tolerance) < bkg.frame.width { w = .expand }	// label is less wide than frame -> grow
		else { w = .nothing }																										// label is same width as frame -> do nothing
	
		// Height:
		if lab.frame.height > (bkg.frame.height + tolerance) { h = .shrink }			// label is taller than frame -> shrink
		else if (lab.frame.height + tolerance) < bkg.frame.height { h = .expand }	// label is less tall than frame -> grow
		else { h = .nothing }																											// label is same height as frame -> do nothing
		
		return (w,h)
	}()
	
	// Early return if no scale action needed...
	if (shrink_or_scale.width == ShrinkScale.nothing)
		&& (shrink_or_scale.height == ShrinkScale.nothing) {
		return
	}
	
	// Logic stuff:
	let amount_to_scale: (width: CGFloat, height: CGFloat) = {
		
		let w: CGFloat, h: CGFloat	// Returners
		
		if shrink_or_scale.width == .shrink 			{	w = bkg.frame.width / lab.frame.width	}		// We need to scale label's width by 0.XX
		else if shrink_or_scale.width == .expand  {	w = lab.frame.width / bkg.frame.width	}		// We need to scale label's width by >1.00
		else { w = 1 }																																				// We don't need to scale
		
		if shrink_or_scale.height == .shrink 			 {	h = bkg.frame.height / lab.frame.height	}	// We need to scale label's height by 0.XX
		else if shrink_or_scale.height == .expand  {	h = lab.frame.height / bkg.frame.height	}	// We need to scale label's height by >1.00
		else { h = 1 }																																					// We don't need to scale
		
		return (w,h)
	}()
	
	// TODO: Figure out how to do with without warping the aspect ration
	lab.xScale = lab.xScale * amount_to_scale.width
	lab.yScale = lab.yScale * amount_to_scale.height
	
	// Testing:
	printr([lab.frame, bkg.frame])
	print(shrink_or_scale)
}







print("\n")



