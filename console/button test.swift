//
//  button test.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/24/16.
//
//

import SpriteKit

private func test() {
	print("Shrinkx2") // working
	let button = Button2(size: CGSize(width: 65, height: 15), text: "hey  fffffffffffffffffthere")
	
	print("expandx2 for X") // working
	button.text = "OMG22222"
	
	print("shrink, expand") // working
	button.text = "zzzzzzzzzzzzz 333333333333333333333"
	
	print("expand, shrink") // working
	_=Button2(size: CGSize(width: 65, height: 1), text: "hey  ")
	
	print("nothing, expand") // working
	button.text = "zzzzzzzzzzzzz 333333333333333333333"

	print(" expandx2 for Y") // working
	button.text = "z"
}
