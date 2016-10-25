//
//  main.swift
//  console
//
//  Created by Dude Guy  on 10/18/16.
//
// Don't forget to use `typealias this` after ever struct inline
// Don't forget to use /* MaRK: */ /// Explanation:
// Don't forget quick help is OPT+V
//

import SpriteKit

// MARK: TOP

/* MARK: - [V] glMoney */ /** How much $ we have */			var glMoney: Int = 0 //MARK: -

/** Object for all scenes: */	struct ButtonNode {
		
		/** Code that is run: */		let on_click: ()->()
		
		/** Text displayed... */		let text: String
			
		/** Mutable for SK r: */		let node: SKNode
															}

/// Lists for scene1: Keep scoring / Cash out -- IMMUTABLE -- use Init for new shit
	struct ListOfButtonNodesForScene1 { typealias this = ListOfButtonNodesForScene1
		
		/// Amount of $ you need before the button2 will show - IA
		private static let amount_needed = 50
		
		/* MARK: */		/** Says "Keep Scoring!" with current amount of $ left before you can cash out - IA*/
		let button1: ButtonNode
		private static func makeButton1(money_left: Int) -> ButtonNode {
			let the_text = "Keep Scoring! \(money_left) left"
			return (
				ButtonNode( on_click: {print("You need more $")},
										text: the_text,
										node: SKLabelNode(text: the_text))
			)
		}
		
		/* MARK: */		/** Says "Cash Out" with current amount of $ - IA */
		let button2: ButtonNode
		private static func makeButton2(current_cash: Int) -> ButtonNode {
			let the_text = "Cash Out \(current_cash)"
			return (
				ButtonNode( on_click: {print("You can stop now or keep scoring...")},
										text: the_text,
										node: SKLabelNode(text: the_text))
			)
			
		}
		
		/* MARK: */		/** Basic init -- uses Globals!!! butter# = variable to init the nodes.. */
		init(butter1: ButtonNode = this.makeButton1(this.amount_needed - glMoney),
				 butter2: ButtonNode = this.makeButton2(glMoney))	{
			
			// Assign:
			button1 = butter1
			button2 = butter2
		}
	}


// MARK: - STRUCT GlobalNodes (MA): -
	/** List of lists... - MA */	struct GlobalNodes {
		
		/** Buttons for scene1: */	var scene1_buttons = ListOfButtonNodesForScene1()
																//var scene2_buttons = ListOfbuttonscene2
	}


// MARK: - [V] glNodes = GlobalNodes() -
	/** List of all the lists of nodes: */	var glNodes = GlobalNodes()


// MARK: - Tests: -
	/// Scene 1
	makeAButton: do {
		
	}

	/// When we change scenes
	deleteAButton: do {
		
	}

	/// If score is over 50, change text to "Cash Out"
	changeAButton: do {
		
	}

	/// Maybe update the button every 2 frames?
	update: do {
		
		let current_money = 5
	}


