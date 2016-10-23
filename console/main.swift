//
//  main.swift
//  console
//
//  Created by Dude Guy  on 10/18/16.
//
//

<<<<<<< HEAD
import Foundation
import SpriteKit

setup: do {let scene = SKScene(size: CGSize(width: 800, height: 600)); let view = SKView(frame: NSRect(x: 0, y: 0, width: 800, height: 600)); iDidMoveToView(view, scene: scene)}; let n = gNodes!

n.label.position = point(61,6)
	print(n.label.frame)

n.label.setScale(2)
	print(n.label.frame)

let rect = SKShapeNode(rect: CGRect(origin: point(0,0), size: CGSize(width: 200, height: 100)))

/*\/\/\/\/\/\/\/\/\/\*/
	func checkXSize() { }
	func checkYSize() { }
	func increaseToXSize() { }
	func increaseToYSize() { }
/*\/\/\/\/\/\/\/\/\/\*/





print("\n")
=======
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



>>>>>>> origin/1
