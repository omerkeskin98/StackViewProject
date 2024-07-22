//
//  ViewController.swift
//  StackViewProject
//
//  Created by Omer Keskin on 16.07.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 15

        view.addSubview(stackView)

        let spells = ["Expelliarmus", "Alohomora", "Lumos", "Expecto Patronum"]
        for spell in spells {
            let label = UILabel()
            label.text = spell
            label.textAlignment = .center
            label.backgroundColor = .orange
            label.textColor = .white
            label.layer.cornerRadius = 5
            label.font = .boldSystemFont(ofSize: 21)
            label.layer.masksToBounds = true
            stackView.addArrangedSubview(label)
        }

        stackView.translatesAutoresizingMaskIntoConstraints = false


        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
