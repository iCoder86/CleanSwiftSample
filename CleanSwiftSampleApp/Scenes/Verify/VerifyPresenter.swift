//
//  VerifyPresenter.swift
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

protocol VerifyPresentationLogic
{
  func presentSomething(response: Verify.Something.Response)
}

class VerifyPresenter: VerifyPresentationLogic
{
  weak var viewController: VerifyDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Verify.Something.Response)
  {
    let viewModel = Verify.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
