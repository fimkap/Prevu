//
//  AppDelegate.swift
//  Prevu
//
//  Created by Efim Polevoi on 20/11/2016.
//  Copyright © 2016 Efim Polevoi. All rights reserved.
//

import Cocoa

// Model
var imagePath: String! = nil

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        NSApplication.shared().activate(ignoringOtherApps: true)
        let args = CommandLine.arguments
        print("Args: \(args)")
        if (args[1] != "-NSDocumentRevisionsDebugMode") {
            imagePath = args[1]
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

