//
//  WelcomeViewController.swift
//  MessagingApp
//
//  Created by Carrington Tafadzwa Manyuchi on 2022/12/10.
//


import UIKit
import Foundation

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = K.appName
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.3 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
}

