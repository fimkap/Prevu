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
var imagePath: String! = nil

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        // Terminate the previous instances of the app
        terminatePrevious()

        // Move window to the front and make transparent
        moveToFront( window: MAIN_WINDOW)
        makeTransparent( window: MAIN_WINDOW)

        // Handle arguments
        let args = CommandLine.arguments
        //print("Args: \(args)")
        if (args.count > 1 && args[1] != "-NSDocumentRevisionsDebugMode") {
            imagePath = args[1]
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

