//
//  DialogPresenter.swift
//  MovieBooking
//
//  Created by Chi-Quyen Le on 2/7/17.
//  Copyright © 2017 Chi-Quyen Le. All rights reserved.
//

import UIKit

class DialogPresenter {
    
    private let vc: UIViewController
    
    init(vc: UIViewController) {
        self.vc = vc
    }
    
    func present(title: String, message: String, buttonTitle: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: buttonTitle, style: .cancel, handler: nil))
        vc.present(alertController, animated: true, completion: nil)
    }
}
