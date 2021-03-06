//
//  AppDelegate.swift
//  Spinny macOS
//
//  Created by Dude Guy  on 10/18/16.
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//


import Cocoa
import SpriteKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var skView: SKView!
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        /* Pick a size for the scene */
			//let scene = GameScene(size: CGSize(width: 1000, height: 1000))
			if let scene = GameScene(fileNamed: "GameScene") {
            /* Set the scale mode to scale to fit the window */
					scene.scaleMode = .AspectFill
			
			gView = skView!
			gScene = scene
            self.skView!.presentScene(scene)

			
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            self.skView!.ignoresSiblingOrder = true
            
            self.skView!.showsFPS = true
            self.skView!.showsNodeCount = true
			}
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool {
        return true
    }
}
