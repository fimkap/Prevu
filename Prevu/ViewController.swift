//
//  ViewController.swift
//  Prevu
//
//  Created by Efim Polevoi on 20/11/2016.
//  Copyright © 2016 Efim Polevoi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var imagePreview: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        DispatchQueue.main.async {
            if (imagePath != nil) {
                self.imagePreview.image = NSImage.init(contentsOfFile: imagePath)
            }
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

