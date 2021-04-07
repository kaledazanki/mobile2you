//
//  HomeViewController.swift
//  mobile2you
//
//  Created by Kaled Jamal El Azanki on 06/04/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var movieResponse: MoviesResponse?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.navigationController?.navigationBar.isHidden = true
        API.getMovies { (result) in
            switch result {
            case .success(let movieResponse):
                print(movieResponse)
                self.movieResponse = movieResponse
                self.tableView.reloadData()
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieResponse?.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = movieResponse?.results[indexPath.row].original_title
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}



