//
//  ViewController.swift
//  Clock_macOS
//
//  Created by Philip Niedertscheider on 19.04.21.
//

import Cocoa
import ClockUI_macOS

class ViewController: NSViewController {

    override func viewDidAppear() {
        super.viewDidAppear()

        let clockVC = ClockViewController.loadFromNib()
        self.addChild(clockVC)
        clockVC.view.autoresizingMask = [.width, .height]
        self.view.addSubview(clockVC.view)
    }
}

