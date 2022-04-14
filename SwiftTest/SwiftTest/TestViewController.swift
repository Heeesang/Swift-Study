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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

extension TestViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        return cell
    }
}
