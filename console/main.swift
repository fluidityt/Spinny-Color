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


// Our logic stuff:
// FIXME: i need a logic module to determine tolerance / threshold or it will NEVER match 100%
enum ShrinkScale { case shrink, expand, nothing }

let break_loop: Bool
while break_loop != true {
	let shrink_or_scale: (width: ShrinkScale, height: ShrinkScale) = {
		
		let tolerance:CGFloat = 5
		
		let w: ShrinkScale, h:ShrinkScale
		
		// label is wider than frame -> shrink:
		if lab.frame.width > (bkg.frame.width + tolerance) { w = .shrink }
		// label is less wide than frame -> grow:
		else if (lab.frame.width + tolerance) < bkg.frame.width { w = .expand }
		// label is same width as frame -> do nothing:
		else { w = .nothing }
		
		// label is taller than frame -> shrink:
		if lab.frame.height > (bkg.frame.height + tolerance) { h = .shrink }
		// label is less tall than frame -> grow:
		else if (lab.frame.height + tolerance) < bkg.frame.height { h = .expand }
		// label is same height as frame -> do nothing:
		else { h = .nothing }
		
		return (w,h)
	}()
	
	let amount_to_scale: (width: CGFloat, height: CGFloat) = {
		
		let w: CGFloat, h: CGFloat
		
		// We need to scale label's width by 0.XX:
		if shrink_or_scale.width == .shrink {	w = lab.frame.width / bkg.frame.width	}
		// We need to scale label's width by >1.00:
		else if shrink_or_scale.width == .expand  {	w = bkg.frame.width / lab.frame.width	}
		// We don't need to scale:
		else { w = 1 }
		
		// We need to scale label's height by 0.XX:
		if shrink_or_scale.height == .shrink {	h = lab.frame.height / bkg.frame.height	}
		// We need to scale label's height by >1.00:
		else if shrink_or_scale.height == .expand  {	h = bkg.frame.height / lab.frame.height	}
		// We don't need to scale:
		else { h = 1 }
		
		return (w,h)
	}()
}

// Testing:
printr([lab.frame, bkg.frame])
print(shrink_or_scale)








print("\n")



