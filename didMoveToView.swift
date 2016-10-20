//
//  didMoveToView.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/18/16.
//
//

import SpriteKit



internal func iDidMoveToView(view: SKView, scene: SKScene) {
	
	gView = view
	gScene = scene
	
	// All node setup:
	gNodes = Nodes(view: view, scene: scene)

	makeLabel("ASLDFJASLKDFHS;LADHFASHF", alignment: centerOf(scene: scene))
}

