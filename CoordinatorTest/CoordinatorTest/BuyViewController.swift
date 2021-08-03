//
//  BuyViewController.swift
//  CoordinatorTest
//
//  Created by Dmitry Zaytcev on 03.08.2021.
//

import UIKit

class BuyViewController: UIViewController {
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "BuyViewController"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        view.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
