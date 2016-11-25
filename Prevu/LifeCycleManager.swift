//
//  LifeCycleManager.swift
//  Prevu
//
//  Created by Efim Polevoi on 25/11/2016.
//  Copyright © 2016 Efim Polevoi. All rights reserved.
//

import Cocoa
import Foundation

func terminatePrevious() {
    let bundleID = Bundle.main.bundleIdentifier!
    if NSRunningApplication.runningApplications(withBundleIdentifier: bundleID).count > 1 {
        let apps = NSRunningApplication.runningApplications(withBundleIdentifier: bundleID)
        for app in apps {
            if app != NSRunningApplication.current() {
                app.terminate()
            }
        }
    }
}
