//
//  SlidingPresenter.swift
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

protocol SlidingPresentationLogic
{
  func presentSomething(response: Sliding.Something.Response)
}

class SlidingPresenter: SlidingPresentationLogic
{
  weak var viewController: SlidingDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Sliding.Something.Response)
  {
    let viewModel = Sliding.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}