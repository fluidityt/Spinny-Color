//
//  main.swift
//  console
//
//  Created by Dude Guy  on 10/18/16.
//
// Don't forget to use `typealias this` after ever struct inline
// Don't forget to use /* MaRK: */ /// Explanation:
// Don't forget quick help is OPT+V
// Don't forget init() is the only place to use Globals
//

import SpriteKit

// MARK: - TOP: -

/** Object for all scenes: */	struct ButtonNode {
		
		/** Code that is run: */		let on_click: ()->()
		
		/** Text displayed... */		let text: String
			
		/** Mutable for SK r: */		let node: SKNode
}


// MARK: - MIDDLE: -

/** Lists for scene1: Keep scoring / Cash out -- IMMUTABLE -- use Init for new shit */
struct ListOfButtonNodesForScene1 { typealias this = ListOfButtonNodesForScene1
	
	// MARK:  Statics:
	
		/** Amount of $ you need before the button2 will show - IA */
		private static let amount_needed = 50
		
		/** Returns the current amount from a global */
		static func currentAmount(global_instance: GlobalVars) -> Int {	return global_instance.money }
	
	// MARK: Button Fields + Static defaults:

		/** Says "Keep Scoring!" with current amount of $ left before you can cash out - IA*/
		let button1: ButtonNode
		private static func makeButton1(money_left: Int) -> ButtonNode {
			let the_text = "Keep Scoring! \(money_left) left"
			return (
				ButtonNode( on_click: {print("You need more $")},
					text: the_text,
					node: SKLabelNode(text: the_text))
			)
		}
	
		/** "Cash Out" with current amount of $ - IA */
		let button2: ButtonNode
		private static func makeButton2(current_cash: Int) -> ButtonNode {
			let the_text = "Cash Out \(current_cash)"
			return (
				ButtonNode( on_click: {print("You can stop now or keep scoring...")},
					text: the_text,
					node: SKLabelNode(text: the_text))
			)
			
		}
		
	// MARK: Initializer:
	
		/** Uses Globals!!! butter# = variable to init the nodes.. */
		init(butter1: ButtonNode = this.makeButton1(this.amount_needed - this.OOP.current_amount),
				 butter2: ButtonNode = this.makeButton2(this.OOP.current_amount))	{
			
			// Assign:
			button1 = butter1
			button2 = butter2
		}
	
	}// EoC

// MARK: - END -

