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

/** Object for all scenes: */
struct ButtonNode {
	
	/** Code that is run: */
	let on_click: ()->()
	
	/** Text displayed... */
	let text: String

	/** Mutable for SK r: */
	let node: SKNode
}

// FUNCTION
