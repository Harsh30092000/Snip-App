//
//  HomeVC.swift
//  Snip App
//
//  Created by cloud on 18/01/22.
//

import UIKit

class HomeVC: UIViewController, ShareInformationProtocol {

    var objPostList : [PostModel?] = []
    @IBOutlet weak var objTableView: UITableView!
    
    var viewModel = HomeVM()

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.getPost{ objmodel in
        self.objPostList = objmodel
            DispatchQueue.main.async {

                self.objTableView.reloadData()
            }
        }
    }
    
    func send(data: String) {
     //print(data)
    }

}
extension HomeVC : UITableViewDataSource{

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.getTotalPost()
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let obj_movie_cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell
    obj_movie_cell?.setData(row:indexPath.row, viewModel: viewModel)
    return obj_movie_cell!
    }
}

extension HomeVC : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath:IndexPath) -> CGFloat {
        return 130
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let objDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as? DetailsVC
        let post = objPostList[indexPath.row]
        
        let closure:(String)->() = {
            data in
            print(data)
        }
        
        if let objDetailsVC = objDetailsVC{
            objDetailsVC.post = post
            objDetailsVC.delegate = self
            self.navigationController?.pushViewController(objDetailsVC, animated: true)
        }
    }
}
