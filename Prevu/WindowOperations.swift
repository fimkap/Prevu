//
//  WindowOperations.swift
//  Prevu
//
//  Created by Efim Polevoi on 25/11/2016.
//  Copyright © 2016 Efim Polevoi. All rights reserved.
//

import Cocoa
import Foundation

func moveToFront( window: NSWindow) {
    window.orderFrontRegardless()
}

func makeTransparent( window: NSWindow) {
    window.isOpaque = false
    window.backgroundColor = NSColor.clear
}
