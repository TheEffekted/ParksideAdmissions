//
//  Nav+StatusBar.swift
//  ParksideAdmissions
//
//  Created by Kyle Zawacki on 1/21/16.
//  Copyright © 2016 University Of Wisconsin Parkside. All rights reserved.
//

extension UINavigationController {
    override public func preferredStatusBarStyle() -> UIStatusBarStyle {
        if let vc = visibleViewController as? AppFactoryWebViewController {
            if vc.fromPDF {
                return UIStatusBarStyle.Default
            }
        }
        
        return UIStatusBarStyle.LightContent
    }
}
