//
//  new button global.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/25/16.
//
//

import SpriteKit


/* MARK: - STRUCT GlobalNodes (MA): - */ /** List of lists... - MA */
struct GlobalNodes {
	/** Buttons for scene1: */	var scene1_buttons = ListOfButtonNodesForScene1()
	/** Buttons for scene2: */  //var scene2_buttons = ListOfbuttonscene2
}


/* MARK: - [V] glMoney */ /** DEFINITION for all the fucking globes */
struct GlobalVars { typealias this = GlobalVars

	struct Instances {
		/** ALL OF OUR NODES -MA */ var nodes = GlobalNodes()
		/** ALL OF OUR CONFIG -IA */ let config = GlobalConfig()
		private init(){}
	}
	
	/** ALL OF OUR INSTANCES */ 	var objects = Instances()
	/** How much $ we have -MA */	var current_money: Int = 0
}

/// Our access point of ALL FUCKING GLOBES
var	g = GlobalVars()

