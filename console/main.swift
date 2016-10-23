//
//  main.swift
//  console
//
//  Created by Dude Guy  on 10/18/16.
//
//

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