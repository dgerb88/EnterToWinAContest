//
//  ViewController.swift
//  Enter to Win a Contest
//
//  Created by Dax Gerber on 11/21/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton) {
        if emailTextField.text == "" {
            UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5) {
                self.emailTextField.transform = CGAffineTransform(translationX: 10, y: 0)
            } completion: { _ in
                UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5) {
                    self.emailTextField.transform = .identity
                }
            }
        } else {
            performSegue(withIdentifier: "paul", sender: sender)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

