//
//  ProfileVC.swift
//  Snip App
//
//  Created by cloud on 21/01/22.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var first_name_head_label: UILabel!
    @IBOutlet weak var first_name_details_label: UILabel!
    @IBOutlet weak var last_name_label: UILabel!
    @IBOutlet weak var email_label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let objUserDefault = UserDefaults.standard
        
        first_name_head_label.text = objUserDefault.string(forKey: "first_name")
        first_name_details_label.text = objUserDefault.string(forKey: "first_name")
        last_name_label.text = objUserDefault.string(forKey: "last_name")
        email_label.text = objUserDefault.string(forKey: "email")
    }
    
    
    

}
