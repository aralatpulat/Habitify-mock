//
//  TestViewController.swift
//  Carousel
//
//  Created by Aral Atpulat on 12.02.2019.
//  Copyright © 2019 Aral Atpulat. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var datesCV: UICollectionView!
    
    let tableViewDataSource = TableViewDataSource();
    let datesCVDataSource = DatesDataSource();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datesCV.register(DateCell.self, forCellWithReuseIdentifier: "DateCell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TabelCell")
        
        tableView.dataSource = tableViewDataSource
        datesCV.dataSource = datesCVDataSource
        
        datesCV.backgroundColor = .white
        if let layout = datesCV.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        self.datesCV.showsHorizontalScrollIndicator = false
        
    }
}
