//
//  TestViewController.swift
//  SwiftTest
//
//  Created by 곽희상 on 2022/04/14.
//

import Foundation
import UIKit

class TestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let myTableView: UITableView = UITableView()
    let items: [String] = ["곽희상", "swift", "ios"]
    
    func configureTableView() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myTableView)
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        myTableView.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        myTableView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
        myTableView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        myTableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
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
}
