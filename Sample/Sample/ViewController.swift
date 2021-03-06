//
//  ViewController.swift
//  Sample
//
//  Created by Arror on 2017/3/28.
//  Copyright © 2017年 Arror. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person = TRPerson(json: ["name": "Arror", "age": 26, "sex": 1])
        
        self.nameLabel.text = person?.name
        self.ageLabel.text = {
            if let age = person?.age {
                return "\(age) 岁"
            } else {
                return "-"
            }
        }()
        self.sexLabel.text = person?.sex?.sexString
    }
}

extension TRSex {
    var sexString: String {
        switch self {
        case .female:
            return "女生"
        case .male:
            return "男生"
        }
    }
}

