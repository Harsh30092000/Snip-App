//
//  HomeVC.swift
//  Snip App
//
//  Created by cloud on 18/01/22.
//

import UIKit

class HomeVC: UIViewController {

    var objPostList : [PostModel?] = []

    @IBOutlet weak var objTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let objNetworking = Networking()

        objNetworking.getPostFrom(serverUrl: Server.kPost.rawValue) { objmodel in

        self.objPostList = objmodel

            DispatchQueue.main.async {

                self.objTableView.reloadData()
            }
            print("dkdkd")

        }

    }

}
extension HomeVC : UITableViewDataSource{

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return objPostList.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let obj_movie_cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell
    let movie = objPostList[indexPath.row]
    obj_movie_cell?.titleLabel.text = movie?.title
    return obj_movie_cell!
    }
}

