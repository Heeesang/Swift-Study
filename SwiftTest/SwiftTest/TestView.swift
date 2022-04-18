//
//  TestView.swift
//  SwiftTest
//
//  Created by 곽희상 on 2022/04/18.
//
import UIKit

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
