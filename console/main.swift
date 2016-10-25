//
//  main.swift
//  console
//
//  Created by Dude Guy  on 10/18/16.
//

import SpriteKit

/// A container for our structs
struct s {
	
	// MARK: - Structs: -
	
	/// Object for all scenes:
	struct ButtonNode {
		let on_click: ()->()
		let text: String
		
		// Mutable for SK reasons:
		let node: SKNode
	}
	
	/// Lists for scene1: Keep scoring / Cash out
	struct ListOfButtonNodesForScene1 {
		
		/// Says "Keep Scoring!" with current amount of $ left before you can cash out
		let button1: ButtonNode
		func makeButton1(money_left: String) -> ButtonNode {
			let the_text = "Keep Scoring! \(money_left) left"
			return (
				ButtonNode( on_click: {print("You need more $")},
										text: the_text,
										node: SKLabelNode(text: the_text))
			)
		}
		
		/// Says "Cash Out" with current amount of $
		let button2: ButtonNode
		func makeButton2(current_cash: Int) -> ButtonNode {
			let the_text = "Cash Out \(current_cash)"
			return (
				ButtonNode( on_click: {print("You can stop now or keep scoring...")},
										text: the_text,
										node: SKLabelNode(text: the_text))
			)
		
		}
		
		/// Only-used-here alias for ButtonNode
		typealias BN = ButtonNode
		
		/// Basic init
		init(butter1: BN) {
			button2_text = b2text
		}
	}
	
	/// List of lists... Mutable
	struct GlobalNodes {
		var scene1_buttons = ListOfButtonNodesForScene1()
		
		//var scene2_buttons = ListOfbuttonscene2
	}
}



/// Global
struct g {
	
	// MARK: - GLOBAL VARS!!! -
	
	/// Accessor to List of Lists
	static var nodes = s.GlobalNodes()
	
	/// how much $ we have
	static var money = 0
}



// MARK: - Tests: -

/// Scene 1
makeAButton: do {
	
}

// When we change scenes
deleteAButton: do {
	
}

// If score is over 50, change text to "Cash Out"
changeAButton: do {
	
}

// Maybe update the button every 2 frames?
update: do {
	
	let current_money = 5
}


