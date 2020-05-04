//
//  ViewController.swift
//  AlternativeAppIcons
//
//  Created by Yoeun Samrith on 4/30/20.
//  Copyright © 2020 Yoeun Samrith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func firstButtonDidTapped(_ sender: UIButton) {
        setAppIcon("Icon-1")
    }
    
    @IBAction func secondButtonDidTapped(_ sender: UIButton) {
        setAppIcon("Icon-2")
    }
    
    func setAppIcon(_ fileName: String) {
        UIApplication.shared.setAlternateIconName(fileName) { error in
            if let error = error {
                print("error - \(error.localizedDescription) - \(fileName)")
            }
        }
    }
}

