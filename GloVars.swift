//
//  GloVars.swift
//  Spinny Color
//
//  Created by Dude Guy  on 10/20/16.
import SpriteKit


// TODO: Error and nil checks
// TODO: SK Constraints
// TODO: Check the guard let gScene = gScene thing...
// TODO: Test performance of calling methods for the entire gamescene overrides
// TODO: Test if updating a node every frame is better than checking with IF first (such as only move if camera moved)
// TODO: Use the performance  test to see if something is more efficient

// FIXME: FIXED!! BUT.. see end...-- The text updating on the move looks weird... This occurs when using label.position in update... FIXED---BUT: why does adding it to a parent then moving the parent fix this?

internal var
	gView: SKView?, // assigned in Appdelegate / view controller

	gScene: SKScene?, // assigned in Appdelegate / view controller

	gTime: NSTimeInterval?, // Assigned in iDMV

	gNodes: Nodes?, // Assigned in iDMV

	sys: System2? // Assigned in iDMV

internal struct System2 {}






*/