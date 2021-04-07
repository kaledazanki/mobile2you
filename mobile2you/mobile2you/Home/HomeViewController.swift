//
//  HomeViewController.swift
//  mobile2you
//
//  Created by Kaled Jamal El Azanki on 06/04/21.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        API.getMovies { (result) in
            switch result {
            case .success(let movieResponse):
                print(movieResponse)
            case .failure(let error):
                print(error)
            }
        }
    }



}
