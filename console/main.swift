//
//  main.swift
//  console
//
//  Created by Dude Guy  on 10/18/16.
//
//

import SpriteKit

//print(zigger)

final internal class Button2 {

	// Indirectly controlled nodes:
	let rect: SKShapeNode
	let label: SKLabelNode


	// Property:
	var text = "initial" {
		didSet {


		}
	}

	func setScale(scale: CGFloat) {
		rect.setScale(scale)
		// Trigger resize:
		self.text = self.text + ""
	}


	init(size: CGSize, text: String) {
		self.rect = SKShapeNode(rect: CGRect(x: 0, y: 0, width: size.width, height: size.height))
		self.label = SKLabelNode(text: text)
	}
}

let fun_button = Button2()
print(fun_button.text)

fun_button.text = "never will see this"
print(fun_button.text)














print("\n")



