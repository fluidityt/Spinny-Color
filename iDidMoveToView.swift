//
//  didMoveToView.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/18/16.
//
//

import SpriteKit


/// Adjust scene -> configure nodes -> Return
internal func _iDidMoveToView(view: SKView, scene: SKScene) {

	// Adjust Scene:
	scene.anchorPoint = CGPoint(x: 0,y: 0)
	scene.size.height = view.bounds.height
	scene.size.width  = view.bounds.width


	// All node setup:
	gNodes = Nodes(view: view, scene: scene)
}

