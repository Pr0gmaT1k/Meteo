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
  fileprivate let owWebServiceClient = OWWebServiceClient()
  fileprivate let disposeBag = DisposeBag()
  
  // Mark:- Overrride
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Scroll View
    self.scrollView.delegate = self
    
    // Sync
    self.owWebServiceClient.threeHoursForecastByCity(name: "Rennes")
    .observeOn(MainScheduler.instance)
    .subscribe { event in
      switch event {
        case .completed: break
        case .error(let error): print(error.localizedDescription)
        case .next: break
      }
    }.addDisposableTo(disposeBag)
        
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
