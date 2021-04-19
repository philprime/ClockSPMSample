//
//  ViewController.swift
//  Clock_iOS
//
//  Created by Philip Niedertscheider on 19.04.21.
//

import UIKit
import ClockUI_iOS

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let clockVC = ClockViewController.loadFromNib()
        self.addChild(clockVC)
        clockVC.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(clockVC.view)
    }
}

