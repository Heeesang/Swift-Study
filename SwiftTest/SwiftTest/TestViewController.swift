//
//  TestViewController.swift
//  SwiftTest
//
//  Created by 곽희상 on 2022/04/14.
//

import Foundation
import UIKit
import Alamofire

class TestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    let myTableView: UITableView = UITableView()
    var dataSource: [RandomUser] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchFilms()

        view.addSubview(myTableView)
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myTableView.topAnchor.constraint(equalTo:view.topAnchor),
            myTableView.leftAnchor.constraint(equalTo:view.leftAnchor),
            myTableView.rightAnchor.constraint(equalTo:view.rightAnchor),
            myTableView.bottomAnchor.constraint(equalTo:view.bottomAnchor)
        ])
    }
    
    func fetchFilms() {
        
        let urlString = "https://randomuser.me/api/?results=3"
        AF.request(urlString).responseJSON { (response) in
                    switch response.result {
                    case .success(let res):
                        do {
                            let jsonData = try JSONSerialization.data(withJSONObject: res, options: .prettyPrinted)
                            let json = try JSONDecoder().decode(RandomUserResponse.self, from: jsonData)
                            self.dataSource = json.results
                            DispatchQueue.main.async {
                                self.myTableView.reloadData()
                            }
                        } catch(let err) {
                            print(err.localizedDescription)
                        }
                    case .failure(let err):
                        print(err.localizedDescription)
                    }
                }
    }
}

extension TestViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataSource[indexPath.row].name.title
        return cell
    }
}

