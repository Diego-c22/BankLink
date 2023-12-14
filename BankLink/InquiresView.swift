//
//  InquiresView.swift
//  BankLink
//
//  Created by Diego Cortes on 12/12/23.
//

import UIKit

class InquiresView: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // @IBOutlet weak var tableView: UITableView!
    
    var inquires = [Item]()
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "ItemTableViewCell")
        return table
    }()
    
    override func viewDidLoad() {
            super.viewDidLoad()

            view.addSubview(tableView)
            tableView.translatesAutoresizingMaskIntoConstraints = false

            // Set the top constraint to 250
            let topConstraint = NSLayoutConstraint(item: tableView,
                                                   attribute: .top,
                                                   relatedBy: .equal,
                                                   toItem: view.safeAreaLayoutGuide,
                                                   attribute: .top,
                                                   multiplier: 1,
                                                   constant: 250)

            // Activate the constraint
            topConstraint.isActive = true

            // Set up other constraints
            NSLayoutConstraint.activate([
                tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ])

            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(ItemTableViewCell.self, forCellReuseIdentifier: "ItemTableViewCell")

            loadSampleItems()
        }
    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return inquires.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cellIdentifier = "ItemTableViewCell"

            // Create an instance of the cell class
            let cell = ItemTableViewCell(style: .default, reuseIdentifier: cellIdentifier)

            let item = inquires[indexPath.row]

            // Configure the cell
            cell.DetailLabel?.text = item.description
            cell.ExtraLabel?.text = String(item.amount)

            return cell
        }
    
    
    func loadSampleItems(){
        print("loading items")
        
        guard let item1 = Item(description: "OxxoGas", amount: 520, date: "20-12-23")
        else {
            fatalError("Unable to instantiate car1")
        }
        
        guard let item2 = Item(description: "Cinepolis", amount: 1200, date: "20-12-23")
        else {
            fatalError("Unable to instantiate car1")
        }
        
        guard let item3 = Item(description: "PetroSeven", amount: 65, date: "20-12-23")
        else {
            fatalError("Unable to instantiate car1")
        }
        
        guard let item4 = Item(description: "XlDBussiness", amount: 420, date: "20-12-23")
        else {
            fatalError("Unable to instantiate car1")
        }
        
        guard let item5 = Item(description: "XXSSHGL Store", amount: 1209, date: "20-12-23")
        else {
            fatalError("Unable to instantiate car1")
        }

        
        inquires += [item1, item2, item3, item4, item5]
        
        
    }

}
