//
//  UIButton_Controller.swift
//  UIKit In Code
//
//  Created by Javier Cueto on 16/09/21.
//

import UIKit

class UIButton_Controller: UIViewController{
    
    let customButton: UIButton = {
        let b = UIButton(type: .custom)
        b.setTitle("custom", for: .normal)
        b.backgroundColor = .red
        b.translatesAutoresizingMaskIntoConstraints = false
        b.contentEdgeInsets = .init(top: 10, left: 10, bottom: 10, right: 10)
        b.addTarget(self, action: #selector(customButtonHandle), for: .touchUpInside)
        return b
    }()
    
    let systemButton: UIButton = {
        let b = UIButton(type: .system)
        b.setTitle("system", for: .normal)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.addTarget(self, action: #selector(anyButtonHandle), for: .touchUpInside)
        b.tag = 0
        b.accessibilityIdentifier = "system button here"
        return b
    }()
    
    let myButton: UIButton = {
        let b = UIButton(type: .system)
        b.setTitle("my button", for: .normal)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.addTarget(self, action: #selector(anyButtonHandle), for: .touchUpInside)
        b.tag = 0
        b.accessibilityIdentifier = "my button button here"
        b.backgroundColor = .purple
        b.tintColor = .white
        b.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        b.layer.cornerRadius = 200/2
        return b
    }()
    
    let detailButton: UIButton = {
        let b = UIButton(type: .detailDisclosure)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.addTarget(self, action: #selector(anyButtonHandle), for: .touchUpInside)
        b.tag = 0
        b.accessibilityIdentifier = "detail button here"
        return b
    }()
    
    
    let addButton: UIButton = {
        let b = UIButton(type: .contactAdd)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.addTarget(self, action: #selector(anyButtonHandle), for: .touchUpInside)
        b.tag = 0
        b.accessibilityIdentifier = "contact add button here"
        return b
    }()
    
    let closeButton: UIButton = {
        let b = UIButton(type: .close)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.addTarget(self, action: #selector(anyButtonHandle), for: .touchUpInside)
        b.tag = 0
        b.accessibilityIdentifier = "close add button here"
        return b
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureButton()
    }
    
    func configureButton(){
        view.addSubview(customButton)
        customButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        customButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        view.addSubview(systemButton)
        systemButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        systemButton.centerYAnchor.constraint(equalTo: customButton.centerYAnchor).isActive = true
        
        view.addSubview(detailButton)
        detailButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        detailButton.centerYAnchor.constraint(equalTo: customButton.centerYAnchor).isActive = true
        
        view.addSubview(addButton)
        addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        addButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        view.addSubview(closeButton)
        closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        closeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
        view.addSubview(myButton)
        myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myButton.topAnchor.constraint(equalTo: systemButton.bottomAnchor, constant: 20).isActive = true
        myButton.heightAnchor.constraint(equalToConstant: 200).isActive = true
        myButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    
    @objc func customButtonHandle(){
        print("custom button here")
    }
    
    
    @objc func anyButtonHandle(sender: UIButton){
        print("tag", sender.tag)
        print("id", sender.accessibilityIdentifier ?? "no ID")
        
    }
    
    
}
