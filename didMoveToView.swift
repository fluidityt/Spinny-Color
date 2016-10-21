//
//  didMoveToView.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/18/16.
//
//

import SpriteKit



internal func iDidMoveToView(view: SKView, scene: SKScene) {
	
		scene.anchorPoint = CGPoint(x: 0,y: 0)
		scene.size.height = view.bounds.height
		scene.size.width  = view.bounds.width
	
		
	

	// All node setup:
	 gNodes = Nodes(view: view, scene: scene)

	//makeLabel("ASLDFJASLKDFHS;LADHFASHF", alignment: centerOf(scene: scene))
}

