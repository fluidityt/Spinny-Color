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

func printr(data: [CGRect]) { print("\(data)") }

let lab = SKLabelNode(text: "Hey there my name is what")
let bkg = SKLabelNode(text: "Hey I'm a rectangle")

	
enum ShrinkScale { case shrink, expand, nothing }
let shrink_or_scale: (width: ShrinkScale, height: ShrinkScale)

/**/ // label is wider than frame -> shrink:
/**/ if lab.frame.width > bkg.frame.width { shrink_or_scale.width = .shrink }
/**/ // label is less wide than frame -> grow:
/**/ else if lab.frame.width < bkg.frame.width { shrink_or_scale.width = .expand }
/**/ // label is same width as frame -> do nothing:
/**/ else { shrink_or_scale.width = .nothing }

/**/ // label is taller than frame -> shrink:
/**/ if lab.frame.height > bkg.frame.height { shrink_or_scale.height = .shrink }
/**/ // label is less tall than frame -> grow:
/**/ else if lab.frame.height < bkg.frame.height { shrink_or_scale.height = .expand }
/**/ // label is same height as frame -> do nothing:
/**/ else { shrink_or_scale.height = .nothing }


let amount_to_scale: (width: CGFloat, height: CGFloat)

/**/ // We need to scale label's width by 0.XX:
/**/ if shrink_or_scale.width == .shrink {	amount_to_scale.width = lab.frame.width / bkg.frame.width	}
/**/ // We need to scale label's width by >1.00:
/**/ else if shrink_or_scale.width == .expand  {	amount_to_scale.width = bkg.frame.width / lab.frame.width	}
/**/ // We don't need to scale:
/**/ else { amount_to_scale.width = 1 }

print(bkg.frame.width)

printr([lab.frame, bkg.frame])







print("\n")



