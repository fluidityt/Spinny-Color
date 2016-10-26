//
//  Scene 1.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/25/16.
//
//

import SpriteKit

// `sys` object -> Globals (All scenes) | Scenals (This scene)
// So the "exit game" button is a Global , sys.global.node vs sys.scenal.node
// Would make more sense to just load what you need for each scene...

// Global still refs scope, so scenal is just bs since you can only be in one scene anyway
// But one scene may have 5 nodes another may have 20.. Would make sense to put in a dict?

// How about having a Truly Global dict that temporary holds data, then passes it off to new locals for each scene?

// OR you could have one global... k



				// Stuff.Swift

protocol Global {}

				// GameScene.swift


// Import SpriteKit

class GameScene2 {
	
	struct Scene1: Global {
	
		
	}
	
	var globed: Global = Scene1()
	
	func ViewDidLoad() {
	
	}
}





