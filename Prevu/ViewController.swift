//
//  ViewController.swift
//  Prevu
//
//  Created by Efim Polevoi on 20/11/2016.
//  Copyright © 2016 Efim Polevoi. All rights reserved.
//

import Cocoa
import AVFoundation

class ViewController: NSViewController {

    @IBOutlet weak var imagePreview: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //imagePreview.layer?.contentsGravity = kCAGravityResizeAspectFill
        
        // Do any additional setup after loading the view.
        DispatchQueue.main.async {
            if (image != nil) {
                //self.imagePreview.image = NSImage.init(contentsOfFile: imagePath!)
                let newImage = image!.image()
                let rect = AVMakeRect(aspectRatio: newImage!.size, insideRect: self.imagePreview.bounds)
                newImage!.size.width = rect.width
                newImage!.size.height = rect.height
                self.imagePreview.image = newImage
                //print("image frame \(self.imagePreview.layer?.frame.size.width) \(self.imagePreview.layer?.frame.size.height)")
                //self.imagePreview.layer?.contents = self.imagePreview.image
                //self.imagePreview.wantsLayer = true
            }
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

