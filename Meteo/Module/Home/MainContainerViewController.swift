//
//  ViewController.swift
//  Meteo
//
//  Created by Julien CLOUPET on 06/11/2017.
//  Copyright © 2017 Pr0g. All rights reserved.
//

import UIKit
import RxSwift

final class MainContainerViewController: UIViewController {
    // Mark:- IBOutlet
    @IBOutlet fileprivate weak var scrollView: UIScrollView!
    @IBOutlet fileprivate weak var visualEffectView: UIVisualEffectView!
    @IBOutlet fileprivate weak var shadowView: UIView!
    
    // Mark:- Properties
    fileprivate let maxEffectAlpha: CGFloat = 0.9
    fileprivate let maxShadowAlpha: CGFloat = 0.4
    
    // Mark:- Overrride
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Scroll View
        self.scrollView.delegate = self
    }
}

// Mark:- UIScrollViewDelegate
extension MainContainerViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let scrolled = self.scrollView.contentOffset.y / self.scrollView.contentSize.height
        let blurrAlpha = scrolled * 3
        self.visualEffectView.alpha = blurrAlpha < maxEffectAlpha ? blurrAlpha : maxEffectAlpha
        self.shadowView.alpha = scrolled < maxShadowAlpha ? scrolled : maxShadowAlpha
    }
}
