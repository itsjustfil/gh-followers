//
//  UIViewController+Ext.swift
//  gh-followers
//
//  Created by Filip Brej on 2/12/20.
//  Copyright © 2020 Filip Brej. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        // Throw onto main thread
        DispatchQueue.main.async {
            let alertVC = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
            
        }
    }
}
