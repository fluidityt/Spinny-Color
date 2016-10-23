//
//  iUpdate.swift
//  Spinny Color
//
//  Created by Dude Guy on 10/22/16.
//
//

import SpriteKit


internal func iUpdate(currentTime: CFTimeInterval) {

	// Glocals
	//let	camera = gNodes!.camera
	let label = gNodes!.label
	let move = gNodes!.move

	// Hit detectiodn:
	hitDetect: do {
		let hittable_frames = [move.left.frame, move.right.frame]

		for frame in hittable_frames {
			if label.frame.intersects(frame) {
				label.text = "Hit!"
				break hitDetect
			}
		}

		// If no hit detection:
		label.text = "Untouched.."
	}


}