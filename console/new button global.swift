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
struct GlobalVars {
	/** How much $ we have */	var money: Int = 0 //MARK: -
	/** ALL OF OUR NODES AP*/ var nodes = GlobalNodes()
	
}

/// Our access point of ALL FUCKING GLOBES
var	g = GlobalVars()
