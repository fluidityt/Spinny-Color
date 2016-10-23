//
//  Button.swift
//  Spinny Color
//
//  Created by Dude Guy on 10/22/16.
//
//

import SpriteKit

final internal class Button {

	// Needs a property:
	var text = "" { didSet { _resize() } }

	private func _resize() {
		self.text = "Hello"
	}

	init() {}
}
