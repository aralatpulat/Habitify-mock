//
//  TableListDataSource.swift
//  Carousel
//
//  Created by Aral Atpulat on 12.03.2019.
//  Copyright © 2019 Aral Atpulat. All rights reserved.
//

import UIKit

class TableViewDataSource: NSObject, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TabelCell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
}
