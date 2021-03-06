//
//  SplashRouter.swift
//  CleanSwiftSampleApp
//
//  Created by cloudZon Infosoft on 31/05/18.
//  Copyright (c) 2018 MB. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol SplashRoutingLogic
{
    func routeToSliding(segue: UIStoryboardSegue?)
}

protocol SplashDataPassing
{
  var dataStore: SplashDataStore? { get }
}

class SplashRouter: NSObject, SplashRoutingLogic, SplashDataPassing
{
  weak var viewController: SplashViewController?
  var dataStore: SplashDataStore?
  
  // MARK: Routing
  
  func routeToSliding(segue: UIStoryboardSegue?)
  {
    if let segue = segue {
      let destinationVC = segue.destination as! SlidingViewController
      var destinationDS = destinationVC.router!.dataStore!
      passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    } else {
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      let destinationVC = storyboard.instantiateViewController(withIdentifier: "SlidingViewController") as! SlidingViewController
      var destinationDS = destinationVC.router!.dataStore!
      passDataToSomewhere(source: dataStore!, destination: &destinationDS)
      navigateToSomewhere(source: viewController!, destination: destinationVC)
    }
  }

  // MARK: Navigation
  
  func navigateToSomewhere(source: SplashViewController, destination: SlidingViewController)
  {
    source.show(destination, sender: nil)
  }
  
  // MARK: Passing data
  
  func passDataToSomewhere(source: SplashDataStore, destination: inout SlidingDataStore)
  {
//    destination.name = source.name
  }
}
