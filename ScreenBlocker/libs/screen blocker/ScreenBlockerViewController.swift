//
//  ScreenBlockerViewController.swift
//  ScreenBlocker
//
//  Created by Chris Allinson on 2018-10-03.
//  Copyright © 2018 Chris Allinson. All rights reserved.
//

import UIKit


protocol ScreenBlockerViewControllerInput {
    func show(bgColor: UIColor?)
    func hide(completion: @escaping () -> Void)
}


// MARK: -

class ScreenBlockerViewController: UIViewController {
    
    // MARK: private methods

    private func setFrame() {
        guard let rootViewController = UIApplication.shared.keyWindow?.rootViewController else {
            return
        }
        
        self.view.frame = rootViewController.view.frame
    }
}


// MARK: -

extension ScreenBlockerViewController: ScreenBlockerViewControllerInput {
    
    // MARK: ScreenBlockerViewControllerInput
    
    func show(bgColor: UIColor?) {
        setFrame()
        self.view.backgroundColor = bgColor
        self.view.alpha = 1.0
    }
    
    func hide(completion: @escaping () -> Void) {
        UIView.animate(withDuration: 0.5, animations: {
            self.view.alpha = 0.0
        }, completion: { _ in
            completion()
        })
    }
}
