//
//  MainPage.swift
//  AppZoo
//
//  Created by Karapet on 12.05.22.
//

import UIKit

class MainViewController: UIViewController {
    
    var stackView: UIStackView!
    var birdButton: UIButton!
    @objc var beastButton: UIButton!
    var fishButton: UIButton!
    var startingLabel: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        initstartingLabel()
        initstackView()
        initbirdButton()
        initbeastButton()
        initfishButton()
        constructHierarchy()
        activateConstraints()
        
        
    }
    
    
        let beastImage = UIImage(named: "beastImage")
        let birdImage = UIImage(named: "birdImage")
        let fishImage = UIImage(named: "fishImage")
    
    @objc func beastButtonPressed() {
        self.navigationController?.pushViewController(TableView(), animated: true)
    }
        
        @objc func fishButtonPressed() {
            navigationController?.pushViewController(TableView(), animated: true)
        }
        
        @objc func birdButtonPressed() {
            navigationController?.pushViewController(TableView(), animated: true)
        }
}



extension MainViewController {
    
    private func initstackView() {
        stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initstartingLabel() {
        startingLabel = UILabel()
        startingLabel.text = ("Animals")
        startingLabel.text = NSLocalizedString("Animals", comment: "Animal_Type")
        startingLabel.textColor = .orange
        startingLabel.font = .boldSystemFont(ofSize: 40)
        startingLabel.textAlignment = .center
        startingLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func initbeastButton() {
        beastButton = UIButton()
        beastButton.layer.cornerRadius = 12
        beastButton.setImage(UIImage(named: "beastImage"), for: .normal)
        beastButton.addTarget(self, action: #selector(beastButtonPressed), for: .touchUpInside)
        beastButton.setTitle("Beast", for: .normal)
        beastButton.setTitleColor(.red, for: .normal)
        beastButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initfishButton() {
        fishButton = UIButton()
        fishButton.layer.cornerRadius = 12
        fishButton.setImage(UIImage(named: "fishImage"), for: .normal)
        fishButton.addTarget(self, action: #selector(fishButtonPressed), for: .touchUpInside)
        fishButton.setTitle("Fish", for: .normal)
        fishButton.setTitleColor(.red, for: .normal)
        fishButton.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func initbirdButton() {
        birdButton = UIButton()
        birdButton.layer.cornerRadius = 12
        birdButton.setImage(UIImage(named: "birdImage"), for: .normal)
        birdButton.addTarget(self, action: #selector(birdButtonPressed), for: .touchUpInside)
        birdButton.setTitle("Bird", for: .normal)
        birdButton.setTitleColor(.red, for: .normal)
        birdButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    private func constructHierarchy() {
        
        view.addSubview(stackView)
        view.addSubview(startingLabel)
        stackView.addArrangedSubview(birdButton)
        stackView.addArrangedSubview(fishButton)
        stackView.addArrangedSubview(beastButton)
        
        
        }
    
    private func  activateConstraints() {
        
        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalToConstant: 200),
            stackView.heightAnchor.constraint(equalToConstant: 300),
            stackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            
            startingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            startingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            startingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25)
            
        ])
        
        
            }
    
        }

