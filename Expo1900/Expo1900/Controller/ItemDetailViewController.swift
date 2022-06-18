//
//  ItemDetailViewController.swift
//  Expo1900
//
//  Created by Brad, Groot on 2022/06/17.
//

import UIKit

class ItemDetailViewController: UIViewController {
    var koreaItem: KoreaItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
    }
}

extension ItemDetailViewController: SendDataDelgate {
    func sendItemData(item: KoreaItem) {
        koreaItem = item
    }
}