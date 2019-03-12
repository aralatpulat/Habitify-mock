//
//  DateCell.swift
//  Carousel
//
//  Created by Aral Atpulat on 11.03.2019.
//  Copyright © 2019 Aral Atpulat. All rights reserved.
//

import UIKit

class DateCell: UICollectionViewCell {
  
    var dayOfWeek: String? {
        didSet{
            dayOfWeekLabel.text = dayOfWeek
        }
    }
    
    var dayOfMonth: String? {
        didSet{
            dayOfMonthLabel.text = dayOfMonth
        }
    }
    
    override var isSelected: Bool {
        didSet{
            if isSelected {
                self.layer.borderWidth = 1
                self.layer.borderColor = UIColor.blue.cgColor
                self.dayOfMonthLabel.textColor = .blue
                self.dayOfWeekLabel.textColor = .blue
                self.backgroundColor = .white
            } else {
                self.layer.borderColor = UIColor.clear.cgColor
                self.dayOfMonthLabel.textColor = .black
                self.dayOfWeekLabel.textColor = .black
                self.backgroundColor = UIColor(red: 230/250, green: 230/250, blue: 230/250, alpha: 1)
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 230/250, green: 230/250, blue: 230/250, alpha: 1)
        self.layer.cornerRadius = 5
        addSubview(dayOfWeekLabel)
        addSubview(dayOfMonthLabel)
        setConstraints()
    }
    
    let dayOfWeekLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = label.font.withSize(11)
        return label
    }()
    
    let dayOfMonthLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = label.font.withSize(14)
        return label
    }()
    
    func setConstraints(){
        dayOfMonthLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        dayOfMonthLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        dayOfMonthLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        dayOfMonthLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        dayOfMonthLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
        
        dayOfWeekLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        dayOfWeekLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        dayOfWeekLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        dayOfWeekLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        dayOfWeekLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
