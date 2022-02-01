//
//  Extensions.swift
//  Snip App
//
//  Created by cloud on 21/01/22.
//

import UIKit

extension UIViewController {
    
    func showAlert(message:String) {
        let alertController = UIAlertController(title: "SNip", message: message, preferredStyle: UIAlertController.Style.alert)
        
        let okActionButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        
        alertController.addAction(okActionButton)
        self.navigationController?.present(alertController, animated: true, completion: nil)
    }
}
