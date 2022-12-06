//
//  ViewController.swift
//  DisableScreenShot
//
//  Created by Pradip on 06/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ignoreView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ignoreView.preventDisableScreenshot()
    }


}


extension UIView {
    func preventDisableScreenshot() {
        DispatchQueue.main.async {
            let field = UITextField()
            field.isSecureTextEntry = true
            field.isUserInteractionEnabled = false
            self.addSubview(field)
            field.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            field.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            self.layer.superlayer?.addSublayer(field.layer)
            field.layer.sublayers?.first?.addSublayer(self.layer)
        }
    }
}
