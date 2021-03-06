//
//  AppDelegate.swift
//  Prevu
//
//  Created by Efim Polevoi on 20/11/2016.
//  Copyright © 2016 Efim Polevoi. All rights reserved.
//

import Cocoa

// Constants
let MAIN_WINDOW = NSApplication.shared().windows[0]

// Model
var image: Image? = nil

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        // Terminate the previous instances of the app
        terminatePrevious()

        // Move window to the front and make transparent
        moveToFront( window: MAIN_WINDOW)
        makeTransparent( window: MAIN_WINDOW)
        position( window: MAIN_WINDOW, point: NSPoint( x: 730.0, y: 240.0))

        // Handle arguments
        let args = CommandLine.arguments
        //print("Args: \(args)")
        if (args.count > 1 && Image.isValid( path: args[1])) {
            image = Image( path: args[1])
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

