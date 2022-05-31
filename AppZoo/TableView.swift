//
//  TableView.swift
//  AppZoo
//
//  Created by Karapet on 31.05.22.
//

import UIKit


class TableView: UIViewController {
    
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        initTableView()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        view.addSubview(tableView)
    }
    
    var animalKind = ["Guppy", "Goldfish", "Blobfish", "Oscar", "Bluefish", "Shark", "Ladyfish"]
    

    
    
}

extension TableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return animalKind.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = animalKind[indexPath.row]
        return cell
    }
    
    
}

extension TableView {
    
    private func initTableView() {
        tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}

