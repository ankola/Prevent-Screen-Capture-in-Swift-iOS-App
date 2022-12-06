//
//  ViewController.swift
//  new2
//
//  Created by Savan Ankola on 06/12/22.
//

import UIKit
import ScreenshotPreventing

class ViewController: UIViewController {

    @IBOutlet weak var viewIgnore: UIView!
    let container = ScreenshotPreventingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(container)
        container.setup(contentView: viewIgnore)
        container.preventScreenCapture = true
    }


}

