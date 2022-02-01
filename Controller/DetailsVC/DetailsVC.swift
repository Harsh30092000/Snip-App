//
//  ViewController.swift
//  Snip App
//
//  Created by cloud on 19/01/22.
//

import UIKit

protocol ShareInformationProtocol {
    func send(data:String)
}

class DetailsVC: UIViewController {
    
    var post:PostModel?
    
    var delegate:ShareInformationProtocol?
    
    @IBOutlet weak var userIdLabel : UILabel!
    @IBOutlet weak var idLabel : UILabel!
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var bodyLabel : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userIdLabel.text = "UserID : - \(post?.userId ?? 0)"
        idLabel.text = "PostID : - \(post?.id ?? 0)"
        titleLabel.text = "Title : - \(post?.title ?? "")"
        bodyLabel.text = "Body : - \(post?.body ?? "")"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendDataAction(_ sender:Any) {
        delegate?.send(data: "\(post?.userId ?? 0)")
        
    }
}
