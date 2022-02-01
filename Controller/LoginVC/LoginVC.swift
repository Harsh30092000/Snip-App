//
//  LoginVC.swift
//  Snip App
//
//  Created by cloud on 21/01/22.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginAction(_ sender: Any) {
        let username = usernameTF.text ?? ""
        let password = usernameTF.text ?? ""
        
        if(username.count > 0 && username == "John") && (password.count > 0 && password == "John") {
            
            saveUser(first_name: username, password: password, last_name: "Doe", email: "johndoe@gmail.com")
            let objHomeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as? HomeVC
            
            if let objHomeVC = objHomeVC {
                self.navigationController?.pushViewController(objHomeVC, animated: true)
            }
        }
        
        else {
        showAlert(message: "Invalid UserID/Password")
        }
    }
    
    func saveUser(first_name:String, password:String, last_name:String, email:String) {
        let objUserDefault = UserDefaults.standard
        
        objUserDefault.set(first_name, forKey: "first_name")
        //print(first_name)
        objUserDefault.set(password, forKey: "password")
        objUserDefault.set(last_name, forKey: "last_name")
        objUserDefault.set(email, forKey: "email")
        objUserDefault.set(true, forKey: "logged_in")
    }
    

}
