//
//  CreateAccountViewController.swift
//  CoordinatorTest
//
//  Created by Dmitry Zaytcev on 03.08.2021.
//

import UIKit

class CreateAccountViewController: UIViewController {
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "CreateAccountViewController"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        view.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
