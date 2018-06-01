//
//  CustomDismissSegue.swift
//  CleanSwiftSampleApp
//
//  Created by cloudZon Infosoft on 01/06/18.
//  Copyright © 2018 MB. All rights reserved.
//

import UIKit

// Enables CustomDismiss Action In Storyboard
class CustomDismissSegue: UIStoryboardSegue {
    override func perform() {
        self.source.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
