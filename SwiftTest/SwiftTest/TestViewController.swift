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
    let items: [String] = ["곽희상", "swift", "ios"]
    
    
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
}

extension TestViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    func fetchFilms() {
        
        let urlString = "https://randomuser.me/api/?results=1"
        
        AF
            .request(urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
            .responseDecodable(of: RandomUserResponse.self) {response in
                guard case .success(let data) = response.result else {return}
                print(data.results)
            }
      }
}

