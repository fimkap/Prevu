//
//  Image.swift
//  Prevu
//
//  Created by Efim Polevoi on 28/11/2016.
//  Copyright © 2016 Efim Polevoi. All rights reserved.
//

import Foundation
import AppKit

struct Image {

    // MARK: Properties

    var filePath: String?

    init( path: String) {
        self.filePath = path
    }

    func image() -> NSImage? {
        return NSImage.init(contentsOfFile: filePath!)
    }

    // MARK: Type methods
    static func isValid( path: String) -> Bool {
        let myRange = path.index(path.endIndex, offsetBy: -3)..<path.endIndex
        return path.range(of: "PNG", options: String.CompareOptions.caseInsensitive, range: myRange) != nil
    }
}
