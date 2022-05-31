//
//  ViewController.swift
//  AppZoo
//
//  Created by Karapet on 11.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    var welcomeLabel: UILabel!
    var starterButton: UIButton!
    var picker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        initWelcomeLabel()
        initPickerView()
        initStarterButton()
        currentHierarchy()
        activateConstraints()
        
    }
    
    
    @objc func ButtonPressed() {
        self.navigationController?.pushViewController(MainViewController(), animated: true)
        
    }
    
}

let language = ["Armenian", "Russian", "English"]

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in picker: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ picker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return language[row]
    }
}

extension ViewController {
    
    private func initWelcomeLabel() {
        welcomeLabel = UILabel()
        welcomeLabel.text = "Welcome Zoo"
        welcomeLabel.font = .boldSystemFont(ofSize: 23)
        welcomeLabel.textColor = .orange
        welcomeLabel.textAlignment = .center
        welcomeLabel.text = NSLocalizedString("Welcome Zoo", comment: "Starting_label")
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    
    private func initPickerView() {
        picker = UIPickerView()
        picker.delegate = self
        picker.translatesAutoresizingMaskIntoConstraints = false
    }
    

    
    private func initStarterButton() {
        starterButton = UIButton(type: .system)
        starterButton.setTitle("Tap to Start", for: .normal)
        starterButton.setTitleColor(.black, for: .normal)
        starterButton.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)
        starterButton.layer.cornerRadius = 12
        starterButton.backgroundColor = .orange
        starterButton.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    
    private func currentHierarchy() {
        view.addSubview(welcomeLabel)
        view.addSubview(starterButton)
        view.addSubview(picker)
    }
    

    
    private func activateConstraints() {
        
        NSLayoutConstraint.activate([
            
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 25),
            
            starterButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 700),
            starterButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            starterButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            starterButton.heightAnchor.constraint(equalToConstant: 60),
            
            picker.topAnchor.constraint(equalTo: welcomeLabel.topAnchor, constant: 130),
            picker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            picker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25)
            
            
            
            
        ])
        
    }
    
}
